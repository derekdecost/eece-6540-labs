//==============================================================
// Copyright © Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================
#include <sycl/sycl.hpp>
using namespace sycl;

static constexpr size_t N = 256; // global size
static constexpr size_t B = 64;  // work-group size

int main() {
  queue q;
  std::cout << "Device : " << q.get_device().get_info<info::device::name>() << "\n";

  //# initialize data array using usm
  int *data = malloc_shared<int>(N, q);
  for (int i = 0; i < N; i++) data[i] = i;
  for (int i = 0; i < N; i++) std::cout << data[i] << " ";
  std::cout << "\n\n";

  q.parallel_for(nd_range<1>(N, B), [=](nd_item<1> item)[[intel::reqd_sub_group_size(8)]] {
    auto sg = item.get_sub_group();
    auto i = item.get_global_id(0);

    //# swap adjacent items in array using sub_group permute_group_by_xor
    //data[i] = permute_group_by_xor(sg, data[i], 1);
      
    //# reverse the order of items in sub_group using permute_group_by_xor
    data[i] = permute_group_by_xor(sg, data[i], sg.get_max_local_range()[0] - 1);
      
  }).wait();
  
  /*#NOTE: My added code - start
#     h.parallel_for(nd_range<1>(N, B), [=](nd_item<1> item)[[intel::reqd_sub_group_size(32)]] {
#       //# get sub_group handle
#       auto sg = item.get_sub_group();

#       //# query sub_group and print sub_group info once per sub_group
#       if (sg.get_local_id()[0] == 0) {
#         out << "sub_group id: " << sg.get_group_id()[0] << " of "
#             << sg.get_group_range()[0] << ", size=" << sg.get_local_range()[0]
#             << "\n";
#       }
#     });
  */
    //#NOTE: My added code - end
  for (int i = 0; i < N; i++) std::cout << data[i] << " ";
  std::cout << "\n";

  free(data, q);
  return 0;
}
