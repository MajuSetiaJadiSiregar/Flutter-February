import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rumahcodingfebruari/utils/utils.dart';
import 'package:rumahcodingfebruari/view/register_view.dart';

class LoginView extends StatelessWidget implements handleButton {
  const LoginView({Key? key}) : super(key: key);

  @override
  VoidCallback onPressButton() {
    Get.snackbar("Information", "Anda Berhasil Login");
    throw UnimplementedError();
  }

  @override
  VoidCallback onPressButtonRegister() {
    // Get.snackbar("Information", "Anda Berhasil Register");
    Get.to(() => const RegisterView());
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _body()
    );
  }

  Widget _body(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill
                )
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 30,
                  width: 80,
                  height: 200,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/light-1.png')
                        )
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/light-2.png')
                        )
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 40,
                  width: 80,
                  height: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/clock.png')
                        )
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Center(
                      child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10)
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                UnderstandButtonOop(textButton: "Login", handleButton: onPressButton,),
                const SizedBox(height: 30,),
                UnderstandButtonOop(textButton: "Register", handleButton: onPressButtonRegister,),
                const SizedBox(height: 70,),
              ],
            ),
          )
        ],
      ),
    );
  }
}