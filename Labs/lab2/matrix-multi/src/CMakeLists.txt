set(SOURCE_FILE matrix-multi.cpp)
file( GLOB SOURCE_FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.cpp)
set(TARGET_NAME matrix-multi)
set(FPGA_TARGET ${TARGET_NAME}.fpga)
set(FPGA_PROFILE_TARGET ${TARGET_NAME}.fpga_profile)

# FPGA board selection
set(A10_PAC_BOARD_NAME "intel_a10gx_pac:pac_a10")
set(S10_PAC_BOARD_NAME "intel_s10sx_pac:pac_s10")
set(SELECTED_BOARD ${A10_PAC_BOARD_NAME})
if (NOT DEFINED FPGA_BOARD)
    message(STATUS "\tFPGA_BOARD was not specified. Configuring the design to run on the Intel(R) Programmable Acceleration Card (PAC) with Intel Arria(R) 10 GX FPGA. Please refer to the README for information on board selection.")
elseif(FPGA_BOARD STREQUAL ${A10_PAC_BOARD_NAME})
    message(STATUS "\tConfiguring the design to run on the Intel(R) Programmable Acceleration Card (PAC) with Intel Arria(R) 10 GX FPGA.")
elseif(FPGA_BOARD STREQUAL ${S10_PAC_BOARD_NAME})
    message(STATUS "\tConfiguring the design to run on the Intel(R) Programmable Acceleration Card (PAC) D5005 (with Intel Stratix(R) 10 SX FPGA).")
    set(SELECTED_BOARD ${S10_PAC_BOARD_NAME})
else()
    message(STATUS "\tAn invalid board name was passed in using the FPGA_BOARD flag. Configuring the design to run on the Intel(R) Programmable Acceleration Card (PAC) with Intel Arria(R) 10 GX FPGA. Please refer to the README for the list of valid board names.")
endif()

# Flags
set(EMULATOR_COMPILE_FLAGS "-fintelfpga -DFPGA_EMULATOR")
set(EMULATOR_LINK_FLAGS "-fintelfpga")
set(HARDWARE_COMPILE_FLAGS "-fintelfpga -DFPGA")
set(HARDWARE_LINK_FLAGS "-fintelfpga -Xshardware -Xsboard=${SELECTED_BOARD} ${USER_HARDWARE_FLAGS}")
# use cmake -D USER_HARDWARE_FLAGS=<flags> to set extra flags for FPGA backend compilation
set(HARDWARE_PROFILE_COMPILE_FLAGS "-fintelfpga -DFPGA_PROFILE")
set(HARDWARE_PROFILE_LINK_FLAGS "-fintelfpga -Xshardware -Xsprofile -Xsboard=${SELECTED_BOARD} ${USER_HARDWARE_FLAGS}")


# FPGA emulator
if(WIN32)
    set(WIN_EMULATOR_TARGET ${EMULATOR_TARGET}.exe)
    add_custom_target(fpga_emu DEPENDS ${WIN_EMULATOR_TARGET})
    separate_arguments(WIN_EMULATOR_COMPILE_FLAGS WINDOWS_COMMAND "${EMULATOR_COMPILE_FLAGS}")
    add_custom_command(OUTPUT ${WIN_EMULATOR_TARGET} 
                       COMMAND ${CMAKE_CXX_COMPILER} /EHsc ${WIN_EMULATOR_COMPILE_FLAGS} ${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_FILE} -o ${CMAKE_BINARY_DIR}/${WIN_EMULATOR_TARGET}
                       DEPENDS ${SOURCE_FILE})
else()
    foreach( testsourcefile ${SOURCE_FILES} )
        # replace file suffix to create executable file name
        string( REPLACE ".cpp" ".fpga_emu" testname ${testsourcefile} )
        add_executable( ${testname} ${testsourcefile} )
        add_custom_target(${testname}.target DEPENDS ${testname})
        set_target_properties(${testname} PROPERTIES COMPILE_FLAGS ${EMULATOR_COMPILE_FLAGS})
        set_target_properties(${testname} PROPERTIES LINK_FLAGS ${EMULATOR_LINK_FLAGS})
    endforeach( testsourcefile ${SOURCE_FILES} )
endif()

# FPGA hardware
if(WIN32)
    add_custom_target(fpga COMMAND echo "An FPGA hardware target is not provided on Windows. See README for details.")
else()
    foreach( sourcefile ${SOURCE_FILES} )
        # replace file suffix to create executable file name
        string( REPLACE ".cpp" ".fpga" execname ${sourcefile} )
        add_executable( ${execname} EXCLUDE_FROM_ALL ${sourcefile} )
        list(APPEND fpgatargetlist ${execname})
        #add_custom_target(${testname}.target DEPENDS ${testname})
        set_target_properties(${execname} PROPERTIES COMPILE_FLAGS ${HARDWARE_COMPILE_FLAGS})
        set_target_properties(${execname} PROPERTIES LINK_FLAGS ${HARDWARE_LINK_FLAGS})
    endforeach( sourcefile ${SOURCE_FILES} )
    add_custom_target(fpga DEPENDS ${fpgatargetlist})

    #add_executable(${FPGA_TARGET} EXCLUDE_FROM_ALL ${SOURCE_FILE})
    #add_custom_target(fpga DEPENDS ${FPGA_TARGET})
    #set_target_properties(${FPGA_TARGET} PROPERTIES COMPILE_FLAGS ${HARDWARE_COMPILE_FLAGS})
    #set_target_properties(${FPGA_TARGET} PROPERTIES LINK_FLAGS ${HARDWARE_LINK_FLAGS})
endif()

# Generate report
if(WIN32)
    set(DEVICE_OBJ_FILE ${TARGET_NAME}_report.a)
    add_custom_target(report DEPENDS ${DEVICE_OBJ_FILE})
    separate_arguments(HARDWARE_LINK_FLAGS_LIST WINDOWS_COMMAND "${HARDWARE_LINK_FLAGS}")
    add_custom_command(OUTPUT ${DEVICE_OBJ_FILE} 
                       COMMAND ${CMAKE_CXX_COMPILER} /EHsc ${HARDWARE_LINK_FLAGS_LIST} -fsycl-link ${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_FILE} -o ${CMAKE_BINARY_DIR}/${DEVICE_OBJ_FILE}
                       DEPENDS ${SOURCE_FILE})
else()
    foreach( testsourcefile ${SOURCE_FILES} )
        # replace file suffix to create executable file name
        string( REPLACE ".cpp" "_report.a" devobjfile ${testsourcefile} )
        get_filename_component(barename ${testsourcefile} NAME_WE)
        add_custom_target(${barename}.report DEPENDS ${devobjfile})
        list(APPEND reportlist ${barename}.report)
        configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${testsourcefile} ${testsourcefile} COPYONLY)
        separate_arguments(HARDWARE_LINK_FLAGS_LIST UNIX_COMMAND "${HARDWARE_LINK_FLAGS}")
        separate_arguments(CMAKE_CXX_FLAGS_LIST UNIX_COMMAND "${CMAKE_CXX_FLAGS}")
        add_custom_command(OUTPUT ${devobjfile} 
                           COMMAND ${CMAKE_CXX_COMPILER} ${CMAKE_CXX_FLAGS_LIST} ${HARDWARE_LINK_FLAGS_LIST} -fsycl-link ${testsourcefile} -o ${CMAKE_BINARY_DIR}/${devobjfile}
                           DEPENDS ${testsourcefile})
    endforeach( testsourcefile ${SOURCE_FILES} )
    add_custom_target(report DEPENDS ${reportlist})

    #set(DEVICE_OBJ_FILE ${TARGET_NAME}_report.a)
    #add_custom_target(report DEPENDS ${DEVICE_OBJ_FILE})
    #configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_FILE} ${SOURCE_FILE} COPYONLY)
    #separate_arguments(HARDWARE_LINK_FLAGS_LIST UNIX_COMMAND "${HARDWARE_LINK_FLAGS}")
    #separate_arguments(CMAKE_CXX_FLAGS_LIST UNIX_COMMAND "${CMAKE_CXX_FLAGS}")
    #add_custom_command(OUTPUT ${DEVICE_OBJ_FILE} 
    #                   COMMAND ${CMAKE_CXX_COMPILER} ${CMAKE_CXX_FLAGS_LIST} ${HARDWARE_LINK_FLAGS_LIST} -fsycl-link ${SOURCE_FILE} -o ${CMAKE_BINARY_DIR}/${DEVICE_OBJ_FILE}
    #                   DEPENDS ${SOURCE_FILE})
endif()

# FPGA hardware profiling
if(WIN32)
    add_custom_target(fpga_profile COMMAND echo "An FPGA hardware target is not provided on Windows. See README for details.")
else()
    foreach( testsourcefile ${SOURCE_FILES} )
        # replace file suffix to create executable file name
        string( REPLACE ".cpp" ".fpga_profile" testname ${testsourcefile} )
        add_executable( ${testname} EXCLUDE_FROM_ALL ${testsourcefile} )
        add_custom_target(${testname}.target DEPENDS ${testname})
        list(APPEND profilelist ${testname}.target)
        set_target_properties(${testname} PROPERTIES COMPILE_FLAGS ${HARDWARE_PROFILE_COMPILE_FLAGS})
        set_target_properties(${testname} PROPERTIES LINK_FLAGS ${HARDWARE_PROFILE_LINK_FLAGS})
    endforeach( testsourcefile ${SOURCE_FILES} )
    add_custom_target(profile DEPENDS ${profilelist})

    #add_executable(${FPGA_PROFILE_TARGET} EXCLUDE_FROM_ALL ${SOURCE_FILE})
    #add_custom_target(fpga_profile DEPENDS ${FPGA_PROFILE_TARGET})
    #set_target_properties(${FPGA_PROFILE_TARGET} PROPERTIES COMPILE_FLAGS ${HARDWARE_PROFILE_COMPILE_FLAGS})
    #set_target_properties(${FPGA_PROFILE_TARGET} PROPERTIES LINK_FLAGS ${HARDWARE_PROFILE_LINK_FLAGS})
endif()

