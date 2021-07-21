import 'package:flutter/material.dart';
import 'package:flutter_demo1/screens/splash_screen/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
