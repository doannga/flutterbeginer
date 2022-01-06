import 'package:flutter/material.dart';
import 'package:the_example_app1/screens/on_boarding/onboading_screen.dart';


void main() {

  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
