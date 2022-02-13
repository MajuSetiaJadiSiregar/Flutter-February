part of 'services.dart';

class GetInfoUserServices {
  static Future<ResponseGetInfoUser> getUser(String valueToken) async {
    final response = await http.get(
        Uri.parse(Envi.endpointGetInfoUser),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': valueToken,
        }
    );
    if (response.statusCode == 200) {
      return ResponseGetInfoUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load albumvadas');
    }
  }
}