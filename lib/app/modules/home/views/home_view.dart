import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_swiper_3/flutter_swiper_3.dart';

import '../../../../utils/fontIcon.dart';
import '../controllers/home_controller.dart';
import "../../../../utils/screenutil.dart";

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top:MyScreenUtil.getStatusBarHeight() * -1,
            left: 0,
            right: 0,
            bottom:0,
            child:ListView(
              controller:controller.scrollController,
              children: [
                Container(
                  width: MyScreenUtil.width(1080),
                  height: MyScreenUtil.height(684),
                  decoration:const BoxDecoration(
                    color: Colors.red
                  ),
                  child:Swiper(
                    itemBuilder: (BuildContext context,int index){
                      return Image.network("${controller.imageList[index]}",fit: BoxFit.cover,);
                    },
                    index:0,
                    itemCount: controller.imageList.length,
                    pagination: const SwiperPagination(),
                    control: const SwiperControl(),
                  ),
                ),
                ListTile(title:Text("金山词霸${controller.imageList.length}")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
                ListTile(title:Text("金山词霸")),
              ],
            )
          ),
          topBar(),
        ],
      ),
      
    );
  }


  // 顶部导航栏
  Widget topBar(){
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child:Obx(()=>Container(
          width:MyScreenUtil.getScreenWidth(),
          height: MyScreenUtil.height(98) + MyScreenUtil.getStatusBarHeight()+10,
          padding: EdgeInsets.only(bottom: 5),
          decoration:BoxDecoration(
            color:controller.scrollTopClass.value?Colors.white:const Color.fromRGBO(255, 255, 255, 0)
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(MyIcons.xiaomi,color:controller.scrollTopClass.value? Colors.black45 : Colors.white),
              Container(
                width: MyScreenUtil.width(648),
                height: MyScreenUtil.height(97),
                alignment:Alignment.centerLeft,
                padding: const EdgeInsets.only(left:10,right:10),
                decoration: BoxDecoration(
                  color: controller.scrollTopClass.value?Color.fromRGBO(210, 210, 210,0.4):Color.fromRGBO(222, 221, 221, 0.4),
                  borderRadius: BorderRadius.circular(MyScreenUtil.radius(97))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child:Row(
                        children:const  [
                          Icon(Icons.search,color:Colors.black45),
                          Text("手机",style: TextStyle(color:Colors.black45))
                        ],
                      )
                    ),
                    Icon(MyIcons.saomiao,color: Colors.black45,size:MyScreenUtil.fontSize(48))
                  ],
                ),
              ),
              SizedBox(
                width: MyScreenUtil.width(187),
                height: MyScreenUtil.height(97),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:  [
                    Icon(MyIcons.code,color: controller.scrollTopClass.value? Colors.black45 : Colors.white),
                    Icon(MyIcons.xinxi,color: controller.scrollTopClass.value? Colors.black45 : Colors.white),
                  ],
                ),
              )
            ],
          ),
        ))
      );
    } 

}


