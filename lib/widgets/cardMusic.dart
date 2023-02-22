import 'package:flutter/material.dart';

class CardMusic extends StatelessWidget {
  String title;
  CardMusic({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(children: [Text(title), Text(DateTime.now().toString())]),
    );
  }
}
