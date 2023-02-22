import 'package:flutter/material.dart';
import 'dart:convert';
// import 'package:flutter/src/widgets/NewFreshMusics.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';
// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:audio_video_progress_bar_example/audio_player_manager.dart';

class Audio extends StatefulWidget {
  static const routeName = "audioRoute";
  final path;
  final title;

  const Audio({required this.path, required this.title});
  // const Audio({Key? key, required this.title}) : super(key: key);
  // final String title;

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  bool isPlaying = false;
  final AudioPlayer _player1 = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: Container(
          height: size.height,
          child: Stack(fit: StackFit.expand, children: [
            Image.asset("assets/cover1.png",
                height: size.height * .5,
                width: size.height * 0.5,
                fit: BoxFit.cover),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.0),
                    ],
                    stops: const [
                      0.0,
                      0.5,
                      0.6
                    ]).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.black.withOpacity(1.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 20),
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 17),
              ),
            ),
            Positioned(
              top: size.height * .65,
              left: size.width * .12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: const Center(
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 80,
                        //  await _player1.setAsset(path);
                      ),
                    ),
                    onTap: () async {
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                      // toast(context, "you selected:$title");
                      // await _player1.setAsset(widget.path);
                      // isPlaying ? await _player1.play() : await _player1.pause();
                    },
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    child: Center(
                      child: Icon(
                        isPlaying
                            ? Icons.pause_circle_filled
                            : Icons.play_circle_fill,
                        color: Colors.white,
                        size: 80,
                        //  await _player1.setAsset(path);
                      ),
                    ),
                    onTap: () async {
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                      // toast(context, "you selected:$title");
                      await _player1.setAsset(widget.path);
                      isPlaying
                          ? await _player1.play()
                          : await _player1.pause();
                    },
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    child: const Center(
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 80,
                        //  await _player1.setAsset(path);
                      ),
                    ),
                    onTap: () async {
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                      // toast(context, "you selected:$title");
                      // await _player1.setAsset(widget.path);
                      // isPlaying ? await _player1.play() : await _player1.pause();
                    },
                  ),
                ],
              ),
            ),
            Positioned(
                top: 15,
                left: 15,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )),
          ]),
        ),
      ),
    );
  }
}
