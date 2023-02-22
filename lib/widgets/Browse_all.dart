import 'package:flutter/cupertino.dart';

class BrouseAll extends StatelessWidget {
  // final ImageProvider image;
  final String lable;
  const BrouseAll({
    Key? key,
    // required this.image,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Row(children: [
          Container(
            // alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                lable,
                style: TextStyle(fontSize: 18),
              ),
            ),
            height: 110,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 23, 36, 139),
            ),
          ),
          SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 209, 0, 108),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        // crossAxisAlignment: CrossAxisAlignment.start,
        // children: [
        //   Image(
        //     image: image,
        //     // "assets/image7.jpg",
        //     width: 120,
        //     height: 120,
        //     fit: BoxFit.cover,
        //   ),
        //   const SizedBox(height: 10),
        //   Text(lable),
        // ],
      ]),
    );
  }
}  
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      // children: [
      //   Row(
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        // children: Container(
        //   // alignment: Alignment.topLeft,
        //   height: 100,
        //   width: 150,
        //   color: Colors.amber,
        // ),
        // )
        // )
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //     width: 100.0,
        //     height: 100.0,
        //     color: Colors.red,
        //   ),
        // )
      // ],
  