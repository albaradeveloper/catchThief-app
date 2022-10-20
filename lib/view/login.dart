import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udomy/view/component/IostumTextFromField.dart';
import 'package:udomy/view/component/valid.dart';
import 'package:udomy/view/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
                    child: Center(
                      child: SizedBox(
                          width: 250,
                          height: 200,
                          child: Image.asset('images/login.png')),
                    ),
                  ),
                  const Center(
                    child: Text("Welcome To AGBOD HRAME",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  CostumTextFromField(
                      hint: "UserName",
                      icon: const Icon(Icons.person),
                      controller: email,
                      valid: (val) {
                        return vaildInput(val!, 3, 10);
                      }),
                  CostumTextFromField(
                    hint: "Password",
                    icon: const Icon(Icons.password),
                    controller: password,
                    valid: (val) {
                        return vaildInput(val!, 3, 10);
                      }
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(const Home());
                          },
                          child: const Text('LOGIN'))),
                  const SizedBox(
                    height: 130,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New User?'),
                      InkWell(
                        onTap: () => Get.toNamed('/signUpPage'),
                        child: const Text(
                          " Create Account",
                          style: TextStyle(color: Colors.cyan),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
