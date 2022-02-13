part of 'controller.dart';

class HomePageController extends GetxController {

  final name = 'Lintang'.obs;
  final email = 'Krisna'.obs;
  @override
  onInit(){
    getUserDetail();
  }

  void getUserDetail() async{
    try {
      final prefs = await SharedPreferences.getInstance();
      String? valueToken = prefs.getString('token');
      var response = await GetInfoUserServices.getUser(valueToken!);
      name.value = response.name;
      email.value = response.email;
      print(response.email);
    }catch(e) {
      print(e);
    }
  }
}