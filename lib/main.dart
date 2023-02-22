import 'package:flutter/material.dart';
import 'package:spotify_clone/navigations/tabbar.dart';
import 'package:spotify_clone/views/About.dart';
import 'package:spotify_clone/views/home.dart';
import 'package:spotify_clone/views/onload.dart';
import 'package:spotify_clone/views/setting.dart';
import 'package:spotify_clone/widgets/audio.dart';
import 'package:spotify_clone/widgets/AudioList.dart';
import 'package:spotify_clone/widgets/new%20fresh%20musics.dart';
import './navigations/tabbar.dart' as tab;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
        ),
      ),
      routes: {
        // Audio.routeName: (context) => Audio(path:,),
        tab.Tabbar.routeName: (context) => Tabbar(),
        Homeview.routeName: (context) => Homeview(),
        AudioList.routeName: (context) => AudioList(title: ''),
        NewFreshMusics.routeName: (context) => NewFreshMusics(
              title: '',
            ),
        Setting.routeName: (context) => Setting(),
        About.routeName: (context) => About(),
      },
      home: const OnLoad(),
    );
  }
}
