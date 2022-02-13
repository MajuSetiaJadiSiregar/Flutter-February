part of 'services.dart';

class UserService {

  static Future<ResponseSuccessLogin> loginUser(String email, String password) async {
    final response = await http.post(
        Uri.parse(Envi.endpointLogin),
        headers: <String, String> {
        "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "email" : email,
          "password" : password
        })
    );

    if (response.statusCode == 200) {
      return ResponseSuccessLogin.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }
}