import 'package:flutter/material.dart';
import 'package:flutter_demo1/screens/list/components/list_body.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("List View"),
      ),
      body: Body(),
    );
  }
}
