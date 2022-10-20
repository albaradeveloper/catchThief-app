import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udomy/view/IntroScreen.dart';
import 'package:udomy/view/home.dart';
import 'package:udomy/view/login.dart';
import 'package:udomy/view/siginUp.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMI',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch:Colors.amber)
              .copyWith(secondary: Colors.yellowAccent)),
      home:  IntroScreen(),
      getPages: [
        
        GetPage(name:"/Intro", page : ()=>  IntroScreen()),
        GetPage(name:"/loginPage", page : ()=> const Login(title: "login")),
        GetPage(name:"/signUpPage", page : ()=> const SignUp()),
        GetPage(name:"/HomePage", page : ()=> const Home()),
      ],
    );
  }
}
