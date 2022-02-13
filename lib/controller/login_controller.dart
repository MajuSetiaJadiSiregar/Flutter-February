part of 'controller.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();

  void userLogin() async {
    try {
      isLoading.value = !isLoading.value;

      var response = await UserService.loginUser(emailEditingController.text, passwordEditingController.text);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', response.token);
      Get.snackbar("Information", "User ${response.responseDataUser.name} Berhasil Login");
      Get.to(() => HomePage());
      isLoading.value = !isLoading.value;

    }catch(e){
      Get.to(() => const RegisterView());
      isLoading.value = false;
    }
  }
}
