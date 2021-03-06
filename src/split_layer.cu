#include <vector>

#include "split_layer.hpp"
#include "math_functions.hpp"

namespace caffe {

template <typename Dtype>
void SplitLayer<Dtype>::Forward_gpu(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top) {
  for (int i = 0; i < top.size(); ++i) {
    top[i]->ShareData(*bottom[0]);
  }
}




INSTANTIATE_LAYER_GPU_FUNCS(SplitLayer);

}  // namespace caffe
