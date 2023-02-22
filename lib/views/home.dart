import 'package:flutter/material.dart';
import 'package:spotify_clone/views/setting.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/StartedAlbumCard.dart';
import 'package:spotify_clone/widgets/new%20fresh%20musics.dart';
import '../widgets/audio.dart';
import '../widgets/AudioList.dart';

class Homeview extends StatefulWidget {
  static final routeName = "homescreen";
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: size.width,
          height: size.height * .5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0),
              ])),
        ),
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            // child: co(
            //   color: Colors.red,
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Musics",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              InkWell(
                                child: Icon(Icons.settings),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(Setting.routeName);
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            InkWell(
                              child: const AlbumCard(
                                lable: "Best Mode",
                                image: AssetImage("assets/image3.jpg"),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(NewFreshMusics.routeName);
                              },
                            ),
                            SizedBox(width: 16),
                            InkWell(
                                child: const AlbumCard(
                                  lable: "Best Alubum",
                                  image: AssetImage("assets/image4.jpg"),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(NewFreshMusics.routeName);
                                }),
                            //  const AlbumCard(
                            //   lable: "Best Alubum",
                            //   image: AssetImage("assets/image4.jpg"),
                            // ),
                            SizedBox(width: 16),
                            InkWell(
                                child: const AlbumCard(
                                  lable: "new fresh songs",
                                  image: AssetImage("assets/image7.jpg"),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(NewFreshMusics.routeName);
                                }),
                            SizedBox(width: 16),
                            InkWell(
                                child: const AlbumCard(
                                  lable: " Best Clip",
                                  image: AssetImage("assets/image2.jpg"),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(NewFreshMusics.routeName);
                                }),
                            SizedBox(width: 16),
                            InkWell(
                                child: AlbumCard(
                                  lable: "Slow",
                                  image: AssetImage("assets/image1.jpg"),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(NewFreshMusics.routeName);
                                }),
                            SizedBox(width: 16),
                            // AlbumCard(
                            //   lable: "Best Mode",
                            //   image: AssetImage("assets/image3.jpg"),
                            // ),
                            // SizedBox(width: 16),
                            // AlbumCard(
                            //   lable: "Best Mode",
                            //   image: AssetImage("assets/image3.jpg"),
                            // ),
                          ],
                        )),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            " To get you started",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 16),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              InkWell(
                                  child: const StartedAlbumCard(
                                    lable: "bebe rexha",
                                    image: AssetImage("assets/640x640.jpg"),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(NewFreshMusics.routeName);
                                  }),
                              SizedBox(width: 16),
                              InkWell(
                                  child: const StartedAlbumCard(
                                    lable: "Ella henderson",
                                    image: AssetImage("assets/image15.jpg"),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(NewFreshMusics.routeName);
                                  }),
                              SizedBox(width: 16),
                              InkWell(
                                  child: const StartedAlbumCard(
                                    lable: " Ed sheeran ",
                                    image: AssetImage(
                                        "assets/Ed-Sheeran-New-Pub-2-2021-Dan-Martensen-.jpg"),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(NewFreshMusics.routeName);
                                  }),
                            ]),
                          ),

                          SizedBox(height: 32),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      " Try something else",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    SizedBox(height: 16),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(children: [
                                        InkWell(
                                            child: const StartedAlbumCard(
                                              lable: "taylor swift",
                                              image: AssetImage(
                                                  "assets/tyler.jpg"),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  NewFreshMusics.routeName);
                                            }),
                                        SizedBox(width: 16),
                                        InkWell(
                                            child: const StartedAlbumCard(
                                              lable: "drake",
                                              image: AssetImage(
                                                  "assets/06drake2-mediumSquareAt3X.jpg"),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  NewFreshMusics.routeName);
                                            }),
                                        SizedBox(width: 16),
                                        InkWell(
                                            child: const StartedAlbumCard(
                                              lable: "weakend",
                                              image: AssetImage(
                                                  "assets/download-_1_.jpg"),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  NewFreshMusics.routeName);
                                            })
                                      ]),
                                    )
                                  ])),
                          // Row(
                          //   children: [
                          //     RowAlbumCard(),
                          //     SizedBox(width: 16),
                          //     RowAlbumCard(),
                          //   ],
                          // ),
                          // SizedBox(height: 16),
                          // Row(
                          //   children: [
                          //     RowAlbumCard(),
                          //     SizedBox(width: 16),
                          //     RowAlbumCard(),
                          //   ],
                          // ),
                          // SizedBox(height: 16),
                          // Row(
                          //   children: [
                          //     RowAlbumCard(),
                          //     SizedBox(width: 16),
                          //     RowAlbumCard(),
                          //   ],
                          // )
                        ],
                      ),
                    )
                  ]),
            )),
      ],
    ));
  }
}

// class RowAlbumCard extends StatelessWidget {
//   const RowAlbumCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 1,
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white10,
//             borderRadius: BorderRadius.circular(4),
//           ),
//           clipBehavior: Clip.antiAlias,
//           child: Row(
//             children: const [
//               Image(
//                 image: AssetImage("assets/image7.jpg"),
//                 height: 48,
//                 width: 48,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Text("Top 50 - Global")
//             ],
//           ),
//         ));
//     // );
//   }
// }
