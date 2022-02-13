class ResponseSuccessLogin {
  String token;
  ResponseDataUser responseDataUser;
  ResponseSuccessLogin({required this.token, required this.responseDataUser});

  factory ResponseSuccessLogin.fromJson(Map<String, dynamic> parsedJson){
    return ResponseSuccessLogin(
        token: parsedJson['token'],
        responseDataUser: ResponseDataUser.fromJson(parsedJson['user'])
    );
  }
}

class ResponseDataUser {
  String id;
  String name;
  String email;

  ResponseDataUser({required this.id, required this.name, required this.email});

  factory ResponseDataUser.fromJson(Map<String, dynamic> json){
    return ResponseDataUser(id : json["_id"], name : json["name"], email : json["email"]);
  }
}


class ResponseSuccessError{
  String msg;
  ResponseSuccessError({required this.msg});

  factory ResponseSuccessError.fromJson(Map<String, dynamic> parsedJson){
    return ResponseSuccessError(
        msg: parsedJson['msg'],
    );
  }
}
// https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51
//https://github.com/PoojaB26/ParsingJSON-Flutter/blob/master/lib/model/shape_model.dart