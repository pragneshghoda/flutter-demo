import 'package:flutter/material.dart';
import 'package:flutter_demo1/screens/splash_screen/components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> listData = List.empty(growable: true);

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      listData.add("List Item $i");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: Text(listData[index]),
              trailing: Icon(Icons.arrow_forward),
            );
          }),
    );
  }
}
