import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rumahcodingfebruari/controller/controller.dart';
import 'package:rumahcodingfebruari/utils/card_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  final HomePageController homePageController  = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homePageController.name.value),
      ),
      body: Obx((){
        return ListView.builder(
          itemCount: homePageController.listKaryawan.length,
          itemBuilder: (BuildContext context, int index) {
            return CardList(
              name: homePageController.listKaryawan[index].name,
              email: homePageController.listKaryawan[index].email,
              id: homePageController.listKaryawan[index].id,
              handleDelete: (){
                homePageController.deleteKaryawan(homePageController.listKaryawan[index].id);
              },
            );
          },
        );
      }),
    );
  }
}
// child: Column(
// children: [
// Obx((){
// return Text('Nama Pegawai : ${homePageController.name.value} ');
// }),
// Obx((){
// return Text('Nama Pegawai : ${homePageController.email.value} ');
// }),
// SizedBox(height: 50,),
// SizedBox(
// height: 20,
//
// ),
// ],
// ),