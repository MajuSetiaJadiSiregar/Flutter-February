class ResponseDeleteKaryawan{
  String msg;
  ResponseDeleteKaryawan({required this.msg});

  factory ResponseDeleteKaryawan.fromJson(Map<String, dynamic> parsedJson){
    return ResponseDeleteKaryawan(
      msg: parsedJson['msg'],
    );
  }
}