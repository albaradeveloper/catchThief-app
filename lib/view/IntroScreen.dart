import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class IntroScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'حمـــاية',
      subTitle: 'بتســمع عـن طــ9ــويلة وانت خائف على تلفــونك الغالــي يتفقــد  نحن وفـرنا ليك نطيبــق بامــن تلفونك من الســرقات!!',
      imageUrl: 'images/login.png',
    ),
    Introduction(
      title: 'استــرجـاع ',
      subTitle: 'مـع تطبيقنــا تقــدر تحفــظ بينــانات تلفــونك وكل التجــار ممكــن بالرقم المتســلسل يعرفو التلفـون مســروق ولا لا ',
      imageUrl: 'images/login.png',
    ),
    Introduction(
      title: 'امـــــان',
      subTitle: 'تقــدر تأمن جهازك و تقدر كمان تحول الملكية لشخص ثاني عند البيع',
      imageUrl: 'images/login.png',
      
    ),
    Introduction(
      title: 'أقبــض طـــ9ــويلة',
      subTitle: 'تطبيقك الاول لتأمين الهواتف من السرقات والنهب',
      imageUrl: 'images/login.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: Colors.amberAccent,
        introductionList: list,
        onTapSkipButton: () {
          Get.toNamed('/loginPage');
        });
  }
}
