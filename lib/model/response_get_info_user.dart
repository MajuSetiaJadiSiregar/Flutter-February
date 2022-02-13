class ResponseGetInfoUser{
  String name;
  String email;

  ResponseGetInfoUser({
    required this.name,
    required this.email
  });

  factory ResponseGetInfoUser.fromJson(Map<String, dynamic> parsedJson){
    return ResponseGetInfoUser(
        name: parsedJson["name"],
        email: parsedJson["email"]
    );
  }
}