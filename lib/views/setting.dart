import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_clone/views/About.dart';

class Setting extends StatefulWidget {
  static final routeName = "settingRoute";
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 100,
          // color: Color.fromARGB(255, 20, 19, 19),
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Center(
              child: Text(
                "Setting",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: 15,
        ),
        // Container(
        //   height: 150.0,
        //   width: 80.0,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/download.png'),
        //       fit: BoxFit.fill,
        //     ),
        //     shape: BoxShape.circle,
        //   ),
        // ),
        Row(
          children: [
            Container(
              height: 100,
              color: Color.fromARGB(255, 20, 19, 19),
              child: Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Row(
                  children: [
                    Text(
                      "language",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 208),
                      child: Text(
                        "English",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 55, left: 200),
            //   child: Text(
            //     "English",
            //     style: TextStyle(color: Colors.white, fontSize: 20),
            //   ),
            // ),
          ],
        ),
        Divider(
          color: Colors.black,
          height: 3,
        ),
        Container(
          height: 100,
          color: Color.fromARGB(255, 20, 19, 19),
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Row(
              children: [
                Text(
                  "about",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: InkWell(
                    child: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.of(context).pushNamed(About.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: 3,
        ),
        Container(
          height: 100,
          color: Color.fromARGB(255, 20, 19, 19),
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Row(
              children: [
                Text(
                  "verision",
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Text(
                    "version 0.1",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
