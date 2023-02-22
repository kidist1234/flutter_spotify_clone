// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:spotify_clone/views/home.dart';
import '../navigations/tabbar.dart' as tab;
import 'package:animated_text_kit/animated_text_kit.dart';

class OnLoad extends StatelessWidget {
  const OnLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(0, 0, 0, 0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Lottie.asset("assets/spotify.json"),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'MUSIC PLAYER',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 500),
                      ),
                    ],
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  // Text(
                  //   "music ",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontFamily: 'serif',
                  //     fontSize: 50,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 160),
                    child: Row(
                      children:const  [
                        Icon(
                          Icons.circle,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Lottie.asset("assets/loding.json"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 50),
                    child: Text(
                      "when words fail",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    "music speaks.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 160),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Lottie.asset("assets/loading2.json"),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "we've made a playlist to get you started.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            fixedSize: Size(170, 55),
                            side: BorderSide(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(tab.Tabbar.routeName);
                        },
                        child: Text(
                          "Start Listening",
                          style: TextStyle(fontSize: 17),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 160),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          size: 13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.circle,
                          size: 13,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
