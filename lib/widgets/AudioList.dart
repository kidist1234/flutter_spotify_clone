import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioList extends StatefulWidget {
  static const routeName = "audiolistRoute";
  const AudioList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AudioList> createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> {
  final AudioPlayer _player = AudioPlayer();
  bool _isPlayerControlerVisible = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder<String>(
            future:
                DefaultAssetBundle.of(context).loadString("AssetManifest.json"),
            builder: (context, item) {
              if (item.hasData) {
                Map? jsonMap = json.decode(item.data!);
                // List? songs = jsonMap?.keys.toList();
                List? songs = jsonMap?.keys
                    .where((element) => element.endsWith(".mp3"))
                    .toList();
                return ListView.builder(
                    itemCount: songs?.length,
                    itemBuilder: (context, index) {
                      var path = songs![index].toString();
                      var title = path.split("/").last.toString();
                      title = title.replaceAll("%20", "");
                      title = title.split(".").first;

                      return Container(
                        margin: const EdgeInsets.only(
                            top: 10.0, left: 15.5, right: 15.0),
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                                color: Colors.white70,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text(title),
                          subtitle: Text(
                            "path:$path",
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 12.0),
                          ),
                          leading: const Icon(
                            Icons.audiotrack,
                            size: 20,
                            color: Colors.white70,
                          ),
                          onTap: () async {
                            toast(context, "you selected:$title");
                            await _player.setAsset(path);
                            await _player.play();
                          },
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: Text("no song in the asset"),
                );
              }
            }));
  }
}

void toast(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
  ));
}
//       body: Container(
//         width: size.width,
//         height: size.height * .5,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//               Colors.white.withOpacity(0.5),
//               Colors.white.withOpacity(0.1),
//               Colors.black.withOpacity(0),
//             ])),
//         child: Text("hello"),
//       ),
//     );
//   }
// }
