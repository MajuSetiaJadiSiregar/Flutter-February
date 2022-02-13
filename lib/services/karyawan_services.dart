part of 'services.dart';

class KaryawanServices {

  static Future<ResponseReadKaryawan> readKaryawan() async{
    final response = await http.get(
        Uri.parse(Envi.endpointReadKaryawan),
    );
    if (response.statusCode == 200) {
      return ResponseReadKaryawan.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load albumvadas');
    }
  }

  static Future<ResponseDeleteKaryawan> deleteKaryawan(String id) async {
    final http.Response response = await http.delete(
      Uri.parse(Envi.endpointDeleteKaryawan+id),
    );
    if (response.statusCode == 200) {
      return ResponseDeleteKaryawan.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to delete album.');
    }
  }
}