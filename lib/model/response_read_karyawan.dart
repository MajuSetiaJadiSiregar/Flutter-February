class ResponseReadKaryawan {
  String status;
  int results;
  List<Karyawan> karyawan;

  ResponseReadKaryawan({required this.status, required this.results, required this.karyawan});

  factory ResponseReadKaryawan.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['karyawan'] as List;
    List<Karyawan> karyawanList = list.map((i) => Karyawan.fromJson(i)).toList();


    return ResponseReadKaryawan(
        status: parsedJson["status"],
        results: parsedJson["result"],
        karyawan: karyawanList
    );
  }
}

class Karyawan {

  final String id;
  final String name;
  final String email;

  Karyawan({required this.id, required this.name, required this.email});

  factory Karyawan.fromJson(Map<String, dynamic> parsedJson){
    return Karyawan(
      id: parsedJson["_id"],
      name: parsedJson["name"],
      email: parsedJson["email"]
    );
  }
}