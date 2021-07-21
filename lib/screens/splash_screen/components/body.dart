import 'package:flutter/material.dart';
import 'package:flutter_demo1/screens/list/main_list.dart';
import 'package:flutter_demo1/screens/splash_screen/components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text1": "Welcome to To-Do App", "text2": "Swipe for more"},
    {"text1": "This one is demo app", "text2": "Swipe for more"},
    {"text1": "Slider Example", "text2": "This is last screen"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                          text1: splashData[index]["text1"].toString(),
                          text2: splashData[index]['text2'].toString(),
                        ))),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(),
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => MainList()));
                    }, child: Text("Continue")),
                    Spacer(),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.red : Colors.black12,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
