import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bruno/bruno.dart';

class HomeController extends GetxController {
  // 轮播列表
  RxList imageList = [
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d869ac1e7d35b02defba61c29b9970a0.jpg?f=webp&w=1080&h=540&bg=8D0509",
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d0afa80f550d8071840da4ca1b399088.png?f=webp&w=1080&h=540&bg=0",
    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec79106bd79389bf10d7c7541f913759.jpg?f=webp&w=1080&h=540&bg=50912"
  ].obs;

  //滚动条高度监听
  ScrollController scrollController = ScrollController();
  //判断顶部栏变化
  RxBool scrollTopClass = false.obs;


  

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      print("object");
      print(scrollController.position.pixels);
      if(scrollController.position.pixels > 30){
        if(!scrollTopClass.value){
          scrollTopClass.value = true;
          update();
        }
      }else{
        if(scrollTopClass.value){
          scrollTopClass.value = false;
          update();
        }
      }
      print(scrollTopClass.value);
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
