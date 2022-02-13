import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rumahcodingfebruari/controller/controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  final HomePageController homePageController  = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100.0,
          width: 200.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0) ),
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Text('Name Pegawai'),
              Obx((){
                return Text(homePageController.name.value);
              }),
              Text('Email Pegawai'),
              Obx((){
                return Text(homePageController.email.value);
              }),
            ],
          ),
        ),
      ),
    );
  }
}