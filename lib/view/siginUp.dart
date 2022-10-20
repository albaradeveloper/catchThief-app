import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/IostumTextFromField.dart';
import 'component/valid.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   TextEditingController email = TextEditingController();
   TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:  SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0,bottom: 40.0),
              child: Center(
                child:   SizedBox(
                    width: 250,
                    height: 200,
                    child: Image.asset('images/signup.png')),
              ),
            ),
           const Center(
              child: Text(
                "Create new a account",
                style: TextStyle(color: Colors.blue ,fontSize: 20.0,fontWeight: FontWeight.bold)
              ),
            ),
           const SizedBox(
              height: 30.0,
            ),
           CostumTextFromField(hint: "Email",icon: const Icon(Icons.email),controller:email ,valid: (val) {
                        return vaildInput(val!, 3, 10);
                      }),
           CostumTextFromField(hint: "UserName",icon:const Icon(Icons.person),controller: username,valid: (val) {
                        return vaildInput(val!, 3, 10);
                      }),
           CostumTextFromField(hint: "Password",icon:const Icon(Icons.password),controller: password,valid: (val) {
                        return vaildInput(val!, 3, 10);
                      }),
           const SizedBox( height: 30,),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                          onPressed: () {}, child: const Text('SIGNUP'))
            ),
           const SizedBox(height: 20,),
                    InkWell(
                     onTap: () => Get.toNamed('/loginPage'),
                      child: const Text(
                        " LogIn",
                        style: TextStyle(color: Colors.cyan),
                      ),)
          ],
        ),
      ),
        ));
  }
}
