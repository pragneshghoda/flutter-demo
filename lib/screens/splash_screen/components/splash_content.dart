import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          text1,
          style: TextStyle(
              fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black38,
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
