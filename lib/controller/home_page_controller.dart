part of 'controller.dart';

class HomePageController extends GetxController {

  final name = 'Lintang'.obs;
  final email = 'Krisna'.obs;
  final listKaryawan = <Karyawan>[].obs;

  @override
  onInit(){
    getUserDetail();
    readKaryawan();
  }

  void getUserDetail() async{
    try {
      final prefs = await SharedPreferences.getInstance();
      String? valueToken = prefs.getString('token');
      var response = await GetInfoUserServices.getUser(valueToken!);
      name.value = response.name;
      email.value = response.email;
    }catch(e) {
      print(e);
    }
  }

  void readKaryawan() async {
    try{
      var response = await KaryawanServices.readKaryawan();
      listKaryawan.value = response.karyawan;
    }catch(e){
      print(e);
    }
  }

  void deleteKaryawan(String id) async {
    try {
      var response = await KaryawanServices.deleteKaryawan(id);
      readKaryawan();
      Get.snackbar("Information", response.msg);
    }catch(e){
      print(e);
    }
  }
}