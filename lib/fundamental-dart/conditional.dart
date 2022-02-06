import 'package:rumahcodingfebruari/fundamental-dart/variabel.dart';

void main(){
  // runTernary();
  ComparationOperator();
}

bool isLogin = true;
bool isManager = true;
bool isMarried = false;
int angkaLima = 5;
String? nullSafety;

void runTernary(){
  ((isLogin || isManager) && !isMarried) ? print("masuk page manager") : print("Anda bukan manager");
  (angkaLima < 3) ? print("user login") : print("silahkan login");
  (nullSafety != null) ? print("ada data nya") : print("silahkan berikan data");
}

int angka = 20;

String labelButton = "Login";
String labelButtonDua = "login";

List<String> StackDev = ["React", "Express", "Monggoose", "Node Js"];
List<String> StackDevDua = ["Node Js", "Express", "Monggoose", "React"];

void ComparationOperator(){
  // (angka < 20) ? print("bener") : print("salah");
  // (labelButton != labelButtonDua) ? print("bener") : print("salah");
  (StackDev[StackDev.length - 1] == StackDevDua[0]) ? print("bener") : print("salah");

  print(StackDev.length);

  if(StackDev.length == 3){
    print("delete array");
  } else {
    print("tidak bisa delete array");
  }

  var abc = StackDev.map((e) => e.toUpperCase());

  print(abc);

}





