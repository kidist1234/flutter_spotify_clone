import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class About extends StatelessWidget {
  static final routeName = "aboutRoute";
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Text("About",
                style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
          // sizedbox(hight.20)
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Text(
            "Music player app is a powerful player which helps you listen to all song formats and help you edit music information and optimize them by cutting tool.",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ))
      ],
    ));
  }
}
