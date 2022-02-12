part of 'controller.dart';

class LoginController extends GetxController {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();

  void userLogin() async {
    try {

      var response = await UserService.loginUser(emailEditingController.text, passwordEditingController.text);
      Get.snackbar("Information", "User ${response.responseDataUser.name} Berhasil Login");
    }catch(e){
      print(e);
    }
  }
}
