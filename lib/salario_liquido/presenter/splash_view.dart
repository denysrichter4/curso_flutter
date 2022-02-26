import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:curso_flutter/salario_liquido/domain/constants.dart';
import 'package:curso_flutter/salario_liquido/presenter/salario_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_TITLE,
      home: AnimatedSplashScreen(
        duration: 5000,
        splash: Constants.PATH_IMAGE,
        nextScreen: SalarioView(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        backgroundColor: Colors.blue,
      ),
    );
  }
}