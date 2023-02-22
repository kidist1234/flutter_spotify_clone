import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/Browse_all.dart';
import '../widgets/cardMusic.dart';
import '../widgets/Browse_all.dart';
import 'dart:convert';

// import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatefulWidget {
  var listMusic;
  // const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: FutureBuilder<String>(
//               future: DefaultAssetBundle.of(context)
//                   .loadString("AssetManifest.json"),
//               builder: (context, item) {
//                 if (item.hasData) {
//                   Map? jsonMap = json.decode(item.data!);
//                   // List? songs = jsonMap?.keys.toList();
//                   List? new_fresh_musics = jsonMap?.keys
//                       .where((element) => element.endsWith(".mp3"))
//                       .toList();

//                   return ListView.builder(
//                       itemCount: new_fresh_musics?.length,
//                       itemBuilder: (context, index) {
//                         var path = new_fresh_musics![index].toString();
//                         var title = path.split("/").last.toString();
//                         title = title.replaceAll("%20", "");
//                         title = title.split(".").first;
//                         return CardMusic(title: new_fresh_musics[index]);
//                       });
//                 } else {
//                   return const Center(
//                       child: Text("Music not found",
//                           style: TextStyle(color: Colors.white)));
//                 }
//               }),
//         ));
//   }
// }
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: const [
              TextField(
                // style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),

                    //   borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  hintText: "What do you want to listen to?",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Browse all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),

              // BrowseAll(),
            ]
                //   :Container(
                //   alignment: Alignment.topLeft,
                //   height: 100,
                //   width: 150,
                //   color: Colors.amber,
                // ),

                ),
          ),
        ),
        Row(children: [
          Container(
            // alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Made For You",
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "New Releases",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 209, 0, 108),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Afro",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 255, 57, 7),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "PoP",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 9, 177, 34),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hip-Hop",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 202, 119, 24),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "R&B",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 205, 7, 209),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Charts",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 161, 119, 252),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Live Events",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 81, 92, 247),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Workout",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 148, 148, 148),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Dance/Electronic",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 255, 44, 7),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Mood",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 216, 0, 244),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Indie",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 208, 0, 0),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
        SizedBox(height: 16),
        Row(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Discover",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 165, 107, 235),
            ),
          ),
          SizedBox(width: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Radio",
                style: TextStyle(fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 176, 7, 255),
            ),
            // alignment: Alignment.topLeft,
            height: 110,
            width: 185,
          ),
        ]),
      ]),
    );
  }
}
