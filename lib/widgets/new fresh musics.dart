import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_clone/widgets/audio.dart';
import '../views/search.dart';

class NewFreshMusics extends StatefulWidget {
  static const routeName = "newfreshmusicsRoute";
  const NewFreshMusics({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NewFreshMusics> createState() => _NewFreshMusicsState();
}

class _NewFreshMusicsState extends State<NewFreshMusics> {
  final AudioPlayer _player1 = AudioPlayer();
  bool _isPlayerControlerVisible = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    SearchPage _searchPage = SearchPage();
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<String>(
              future: DefaultAssetBundle.of(context)
                  .loadString("AssetManifest.json"),
              builder: (context, item) {
                if (item.hasData) {
                  Map? jsonMap = json.decode(item.data!);
                  // List? songs = jsonMap?.keys.toList();
                  List? new_fresh_musics = jsonMap?.keys
                      .where((element) => element.endsWith(".mp3"))
                      .toList();
                  _searchPage.listMusic = new_fresh_musics;
                  return ListView.builder(
                      itemCount: new_fresh_musics?.length,
                      itemBuilder: (context, index) {
                        var path = new_fresh_musics![index].toString();
                        var title = path.split("/").last.toString();
                        title = title.replaceAll("%20", "");
                        title = title.split(".").first;

                        return InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 10.0, left: 15.5, right: 15.0),
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      color: Colors.white70,
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                              child: ListTile(
                                textColor: Colors.white,
                                title: Text(title),
                                subtitle: Text(
                                  "Date: ${DateTime.now()}",
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 12.0),
                                ),
                                leading: const Icon(
                                  Icons.audiotrack,
                                  size: 20,
                                  color: Colors.white70,
                                ),
                                // onTap: () async {
                                //   toast(context, "you selected:$title");
                                //   // await _player1.setAsset(path);
                                //   // await _player1.play();
                                // },
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Audio(path: path, title: title)));
                            });
                      });
                } else {
                  return const Center(
                    child: Text("no song in the asset"),
                  );
                }
              })),
    );
  }
}

// void toast(BuildContext context, String text) {
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//     content: Text(text),
//     behavior: SnackBarBehavior.floating,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//   ));
// }
