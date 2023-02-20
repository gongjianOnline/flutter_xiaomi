import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bruno/bruno.dart';

class HomeController extends GetxController {
  // 轮播列表
  RxList imageList = [
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec791…10d7c7541f913759.jpg?f=webp&w=1080&h=540&bg=50912",
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d869a…fba61c29b9970a0.jpg?f=webp&w=1080&h=540&bg=8D0509"
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/911df…445d49a55263ff7.jpg?f=webp&w=1080&h=540&bg=F5EEE6"
  ].obs;

  //滚动条高度监听
  ScrollController scrollController = ScrollController();



  

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      print("object");
      print(scrollController.position.pixels);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
