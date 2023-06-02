var areaJSON='{"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[27.905, 17.9335, 11.6409, 20.8994, 0.395257], "total":[151704, 198920, 567, 6, 76], "name":"Kernel System", "max_resources":[854400, 1708800, 2713, 1518, 42720], "children":[{"name":"Static Partition", "type":"partition", "children":[{"name":"Board interface", "type":"resource", "data":[134500, 172452, 397, 0, 0], "details":[{"type":"text", "text":"Platform interface logic."}]}]}, {"name":"Global interconnect", "type":"resource", "data":[8779, 12545, 78, 0, 0], "details":[{"type":"text", "text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect."}, {"type":"brief", "text":"For 2 global loads and 1 global store."}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Global Memory Interconnect", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#hnj1476724450050"}]}]}, {"name":"System description ROM", "type":"resource", "data":[0, 67, 2, 0, 0], "details":[{"type":"text", "text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program."}, {"type":"brief", "text":"Contains information for the host."}]}, {"name":"simpleMultiply", "compute_units":1, "type":"function", "total_percent":[1.87201, 1.16397, 0.810861, 3.31736, 0.395257], "total_kernel_resources":[8425, 13856, 90, 5.5, 76], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"text", "text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}, {"type":"brief", "text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}], "children":[{"name":"Function overhead", "type":"resource", "data":[1338, 2411, 0, 0, 10], "details":[{"type":"text", "text":"Kernel dispatch logic."}, {"type":"brief", "text":"Kernel dispatch logic."}]}, {"name":"simpleMultiply.B0", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[9, 35, 0, 0, 4], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[9, 35, 0, 0, 4]}]}, {"name":"Cluster logic", "type":"resource", "data":[6, 4, 0, 0, 5], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"matrix_multi.cl:40", "type":"resource", "data":[35, 1, 0, 0, 0], "debug":[[{"filename":"device/matrix_multi.cl", "line":40}]], "children":[{"name":"32-bit Integer Compare", "type":"resource", "count":1, "data":[35, 1, 0, 0, 0]}], "replace_name":"true"}, {"name":"matrix_multi.cl:41", "type":"resource", "data":[32, 0, 0, 1.5, 0], "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]], "children":[{"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[32, 0, 0, 1.5, 0]}], "replace_name":"true"}]}]}, {"name":"simpleMultiply.B1", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[48, 170, 0, 0, 4], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[48, 170, 0, 0, 4]}]}, {"name":"Cluster logic", "type":"resource", "data":[7, 5, 0, 0, 4], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"matrix_multi.cl:41", "type":"resource", "data":[32, 32, 0, 0, 0], "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]], "children":[{"name":"32-bit Select", "type":"resource", "count":1, "data":[32, 32, 0, 0, 0]}], "replace_name":"true"}, {"name":"matrix_multi.cl:44", "type":"resource", "data":[455, 2128, 0, 1.5, 31], "debug":[[{"filename":"device/matrix_multi.cl", "line":44}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":1, "data":[32, 0, 0, 0, 0]}, {"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[32, 0, 0, 1.5, 0]}, {"name":"Store", "type":"resource", "count":1, "data":[391, 2128, 0, 0, 31], "details":[{"type":"text", "text":"Store uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}], "replace_name":"true"}]}]}, {"name":"simpleMultiply.B2", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[200, 456, 6, 0, 7], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[200, 456, 6, 0, 7]}]}, {"name":"Cluster logic", "type":"resource", "data":[13, 9, 0, 0, 11], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"No Source Line", "type":"resource", "data":[1, 0, 0, 0, 0], "debug":[[{"filename":"", "line":0}]], "children":[{"name":"1-bit Or", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}]}, {"name":"matrix_multi.cl:40", "type":"resource", "data":[67, 1, 0, 0, 0], "debug":[[{"filename":"device/matrix_multi.cl", "line":40}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":1, "data":[32, 0, 0, 0, 0]}, {"name":"32-bit Integer Compare", "type":"resource", "count":1, "data":[35, 1, 0, 0, 0]}], "replace_name":"true"}, {"name":"matrix_multi.cl:41", "type":"resource", "data":[6182, 8604, 84, 2.5, 0], "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":2, "data":[64, 0, 0, 0, 0]}, {"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[32, 0, 0, 1.5, 0]}, {"name":"Hardened Floating-Point Multiply-Add", "type":"resource", "count":1, "data":[0, 0, 0, 1, 0]}, {"name":"Load", "type":"resource", "count":2, "data":[6086, 8604, 84, 0, 0], "details":[{"type":"text", "text":"Load uses a Burst-coalesced cached LSU.  Load with a private 512 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as \'volatile\' to disable generation of this cache."}, {"type":"brief", "text":"Burst-coalesced cached LSU,\\nLoad with a private 512 kilobit cache"}]}], "replace_name":"true"}]}]}]}]}';
var area_srcJSON='{"children":[{"children":[{"data":[134500,172452,397,0,0],"details":[{"text":"Platform interface logic.","type":"text"}],"name":"Board interface","type":"resource"}],"name":"Static Partition","type":"partition"},{"data":[8779,12545,78,0,0],"details":[{"text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect.","type":"text"},{"text":"For 2 global loads and 1 global store.","type":"brief"},{"links":[{"guide":"Best Practices Guide : Global Memory Interconnect","link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#hnj1476724450050"}],"text":"See %L for more information","type":"text"}],"name":"Global interconnect","type":"resource"},{"data":[0,67,2,0,0],"details":[{"text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program.","type":"text"},{"text":"Contains information for the host.","type":"brief"}],"name":"System description ROM","type":"resource"},{"children":[{"data":[26,18,0,0,20],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[1338,2411,0,0,10],"details":[{"text":"Kernel dispatch logic.","type":"text"},{"text":"Kernel dispatch logic.","type":"brief"}],"name":"Function overhead","type":"resource"},{"children":[{"count":3,"data":[257,661,6,0,15],"debug":[[{"filename":"","line":0}]],"name":"State","type":"resource"},{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"","line":0}]],"name":"1-bit Or","type":"resource"}],"data":[258,661,6,0,15],"name":"No Source Line","type":"resource"},{"children":[{"count":2,"data":[70,2,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":40}]],"name":"32-bit Integer Compare","type":"resource"},{"count":1,"data":[32,0,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":40}]],"name":"32-bit Integer Add","type":"resource"}],"data":[102,2,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":40}]],"name":"device/matrix_multi.cl:40","replace_name":"true","type":"resource"},{"children":[{"count":2,"data":[64,0,0,3,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"32-bit Integer Multiply","type":"resource"},{"count":1,"data":[32,32,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"32-bit Select","type":"resource"},{"count":2,"data":[64,0,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"32-bit Integer Add","type":"resource"},{"count":1,"data":[0,0,0,1,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"Hardened Floating-Point Multiply-Add","type":"resource"},{"count":2,"data":[6086,8604,84,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"Load","type":"resource"}],"data":[6246,8636,84,4,0],"debug":[[{"filename":"device/matrix_multi.cl","line":41}]],"name":"device/matrix_multi.cl:41","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[32,0,0,0,0],"debug":[[{"filename":"device/matrix_multi.cl","line":44}]],"name":"32-bit Integer Add","type":"resource"},{"count":1,"data":[32,0,0,1.5,0],"debug":[[{"filename":"device/matrix_multi.cl","line":44}]],"name":"32-bit Integer Multiply","type":"resource"},{"count":1,"data":[391,2128,0,0,31],"debug":[[{"filename":"device/matrix_multi.cl","line":44}]],"name":"Store","type":"resource"}],"data":[455,2128,0,1.5,31],"debug":[[{"filename":"device/matrix_multi.cl","line":44}]],"name":"device/matrix_multi.cl:44","replace_name":"true","type":"resource"}],"compute_units":1,"data":[8425,13856,90,5.5,76],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"text"},{"text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"brief"}],"name":"simpleMultiply","total_kernel_resources":[8425,13856,90,5.5,76],"total_percent":[1.87201,1.16397,0.810861,3.31736,0.395257],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[17204,26468,170,5.5,76],"debug_enabled":"true","max_resources":[854400,1708800,2713,1518,42720],"name":"Kernel System","total":[151704,198920,567,6,76],"total_percent":[27.905,17.9335,11.6409,20.8994,0.395257],"type":"module"}';
var mavJSON='{"nodes":[{"type":"kernel", "id":2, "name":"simpleMultiply", "children":[{"type":"bb", "id":3, "name":"simpleMultiply.B0", "details":[{"type":"table", "Latency":"8"}]}, {"type":"bb", "id":4, "name":"simpleMultiply.B1", "children":[{"type":"inst", "id":6, "name":"Store", "debug":[[{"filename":"device/matrix_multi.cl", "line":44}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"9", "Latency":"2", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#yeo1491314105959"}]}]}]}, {"type":"inst", "id":9, "name":"Begin", "details":[{"type":"table", "Start Cycle":"0", "Latency":"1"}]}, {"type":"inst", "id":10, "name":"End", "details":[{"type":"table", "Start Cycle":"11", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"11"}]}, {"type":"bb", "id":5, "name":"simpleMultiply.B2", "children":[{"type":"inst", "id":7, "name":"Load", "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced cached", "Stall-free":"No", "Start Cycle":"10", "Latency":"159", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#yeo1491314105959"}]}]}]}, {"type":"inst", "id":8, "name":"Load", "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced cached", "Stall-free":"No", "Start Cycle":"10", "Latency":"159", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#yeo1491314105959"}]}]}]}, {"type":"inst", "id":11, "name":"Loop Input", "debug":[[{"filename":"device/matrix_multi.cl", "line":40}]], "details":[{"type":"table", "Start Cycle":"0", "Latency":"1", "Loops To":"12"}]}, {"type":"inst", "id":12, "name":"Loop End", "details":[{"type":"table", "Start Cycle":"177", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"177", "II":"0", "Subloops":"No", "Pipelined":"No", "Fmax Bottlenecks":"No", "Loop Info":"Loop is not pipelined. See Loops Analysis for more information."}]}]}, {"type":"memtype", "id":1, "name":"Global Memory", "children":[{"type":"memsys", "id":13, "name":"DDR", "details":[{"type":"table", "Number of banks":"2"}]}]}], "links":[{"from":12, "to":9}, {"from":6, "to":10}, {"from":12, "to":11}, {"from":3, "to":11}, {"from":7, "to":12}, {"from":8, "to":12}, {"from":9, "to":6}, {"from":11, "to":7}, {"from":11, "to":8}, {"from":13, "to":8}, {"from":6, "to":13}, {"from":13, "to":7}]}';
var loopsJSON='{"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Kernel: simpleMultiply", "data":["", "", ""], "debug":[[{"filename":"device/matrix_multi.cl", "line":23}]], "details":[{"type":"brief", "text":"ND-Range"}, {"type":"text", "text":"ND-Range"}, {"type":"text", "text":"Fmax bottlenck block: None"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Kernels", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#ipp1476408832230"}]}], "children":[{"name":"simpleMultiply.B2", "data":["No", "n/a", "n/a"], "debug":[[{"filename":"device/matrix_multi.cl", "line":40}]], "details":[{"type":"brief", "text":"Thread capacity = 178"}, {"type":"text", "text":"Thread capacity = 178"}], "children":[]}]}]}';
var fmax_iiJSON='{"basicblocks":{"simpleMultiply.B0":{"name":"simpleMultiply.B0", "target_fmax":"Not specified", "target_ii":"Not specified", "achieved_fmax":"240.0", "achieved_ii":1, "latency":8, "max_interleaving":1, "is_fmax_bottleneck":"No", "is_loop_header":"No", "is_single_block_loop":"No", "loop_layer":0, "loop_location":{}}, "simpleMultiply.B1":{"name":"simpleMultiply.B1", "target_fmax":"Not specified", "target_ii":"Not specified", "achieved_fmax":"240.0", "achieved_ii":1, "latency":11, "max_interleaving":1, "is_fmax_bottleneck":"No", "is_loop_header":"No", "is_single_block_loop":"No", "loop_layer":0, "loop_location":{}}, "simpleMultiply.B2":{"name":"simpleMultiply.B2", "target_fmax":"Not specified", "target_ii":"Not specified", "achieved_fmax":"240.0", "achieved_ii":1, "latency":177, "max_interleaving":1, "is_fmax_bottleneck":"No", "is_loop_header":"Yes", "is_single_block_loop":"Yes", "loop_layer":1, "loop_location":{"details":[{"type":"text", "text":"Loop:  (%L)", "links":[{"filename":"device/matrix_multi.cl", "line":"40"}]}]}}}, "functions":{"simpleMultiply":{"debug":[{"filename":"device/matrix_multi.cl", "line":23}], "loop_hierachy":{"simpleMultiply__no_loop":["simpleMultiply.B0", "simpleMultiply.B1"], "simpleMultiply.B2":["simpleMultiply.B2"]}}}}';
var summaryJSON='{"performanceSummary":{"name":"Kernel Summary", "columns":["Kernel Name", "Kernel Type", "Autorun", "Workgroup Size", "# Compute Units"], "children":[{"name":"simpleMultiply", "data":["NDRange", "No", "n/a", 1], "details":[{"type":"text", "text":"Kernel type: NDRange"}, {"type":"text", "text":"The kernel does not use any work-group information (such as get_local_id() or get_group_id()).Local work-group size will be automatically modified to match global work-group size on launch.This is a hardware optimization."}], "debug":[[{"filename":"device/matrix_multi.cl", "line":23}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Kernel Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"simpleMultiply", "data":[8425, 13856, 90, 5.5, 76], "debug":[[{"filename":"device/matrix_multi.cl", "line":23}]]}, {"name":"Global Interconnect", "classes":["summary-highlight", "nohover"], "data":[8779, 12545, 78, 0, 0]}, {"name":"Board Interface", "classes":["summary-highlight", "nohover"], "data":[134500, 172452, 397, 0, 0]}, {"name":"System description ROM", "classes":["summary-highlight", "nohover"], "data":[0, 67, 2, 0, 0]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[151704, 198920, 567, 5, 76], "data_percent":[17.7556, 11.6409, 20.8994, 0.395257]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[854400, 1708800, 2713, 1518, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[{"name":"Load uses a Burst-coalesced cached LSU", "details":[{"type":"text", "text":"Load with a private 512 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as \'volatile\' to disable generation of this cache."}], "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]]}, {"name":"Load uses a Burst-coalesced cached LSU", "details":[{"type":"text", "text":"Load with a private 512 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as \'volatile\' to disable generation of this cache."}], "debug":[[{"filename":"device/matrix_multi.cl", "line":41}]]}]}}';
var infoJSON='{"name":"Info","rows":[{"classes":["info-table"],"data":["matrix_multi_fpga"],"name":"Project Name"},{"data":["Arria 10, 10AX115S2F45I2SGES, dcp_bsp:pac_a10"],"name":"Target Family, Device, Board"},{"data":["19.4.0 Build 64"],"name":"AOC Version"},{"data":["19.2.0 Build 57 Pro"],"name":"Quartus Version"},{"data":["aoc device/matrix_multi.cl -o bin/matrix_multi_fpga.aocx -board=pac_a10"],"name":"Command"},{"data":["Wed May 31 18:52:24 2023"],"name":"Reports Generated At"}]}';
var warningsJSON='{"rows":[{"debug":[[{"filename":"device/matrix_multi.cl","line":23}]],"details":["Compiler Warning: device/matrix_multi.cl:23: declaring global arguments \'outputC\', \'inputA\' and \'inputB\' with no \'restrict\' may lead to low performance for kernel \'simpleMultiply\'"],"name":"device/matrix_multi.cl:23: declaring global arguments \'outputC\', \'inputA\' and \'inputB\' with no \'restrict\' may lead to low performance for kernel \'simpleMultiply\'"}]}';
var quartusJSON='{"quartusFitClockSummary":{"children":[{"details":[{"text":"This section contains a summary of the area and f<sub>MAX</sub> data generated by compiling the kernels through Quartus. \\nTo generate the data, run a Quartus compile on the project created for this design. \\nTo run the Quartus compile, please run command without flag -c, -rtl or -march=emulator","type":"text"}],"name":"Run Quartus compile to populate this section. See details for more information."}],"name":"Quartus Fit Summary"}}';
var fileJSON=[{"path":"/home/u193422/eece-6540-labs/Labs/lab1/matrix_multi/device/matrix_multi.cl", "name":"matrix_multi.cl", "has_active_debug_locs":false, "absName":"/home/u193422/eece-6540-labs/Labs/lab1/matrix_multi/device/matrix_multi.cl", "content":"// Copyright (C) 2013-2019 Altera Corporation, San Jose, California, USA. All rights reserved.\012// Permission is hereby granted, free of charge, to any person obtaining a copy of this\012// software and associated documentation files (the \"Software\"), to deal in the Software\012// without restriction, including without limitation the rights to use, copy, modify, merge,\012// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to\012// whom the Software is furnished to do so, subject to the following conditions:\012// The above copyright notice and this permission notice shall be included in all copies or\012// substantial portions of the Software.\012// \012// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\012// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES\012// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND\012// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT\012// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,\012// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\012// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR\012// OTHER DEALINGS IN THE SOFTWARE.\012// \012// This agreement shall be governed in all respects by the laws of the State of California and\012// by the laws of the United States of America.\012\012/* widthA=heightB for valid matrix multiplication */\012__kernel void simpleMultiply(\012    __global float *outputC,\012    int widthA,\012    int heightA,\012    int widthB,\012    int heightB,\012    __global float *inputA,\012    __global float *inputB)\012{\012    /* get global position in Y direction */\012    int row = get_global_id (1);\012    /* get global position in X direction */\012    int col = get_global_id (0);\012\012    float sum = 0.0f;\012\012    /* calculate result of one element of Matrix C */\012    for (int i=0; i<widthA; i++) {\012        sum += inputA[row*widthA + i] * inputB[i*widthB + col];\012    }\012\012    outputC[row*widthB + col] = sum;\012}\012\012"}];