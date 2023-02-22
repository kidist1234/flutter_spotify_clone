import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.account_circle_rounded),
          //  childre: Padding(

          //   padding: const EdgeInsets.only(top: 50, left: 40, right: 0, bottom: 0),
          title: (Text("Your Library")),
          // title: Text("Your Library"),
          // backgroundColor: Color.fromARGB(255, 88, 54, 54),
          // toolbarHeight: 150,
          // ),
          // body: (
          actions: [
            Icon(Icons.add),
            SizedBox(width: 16),
            Icon(Icons.search_rounded)
          ],
          // ),

          backgroundColor: Color.fromARGB(255, 29, 29, 29),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Center(
                          child: Text(
                        "Artists",
                      )),

                      // color: Colors.black,
                      height: 40,
                      width: 85,
                    ),
                  ],
                ),
              ),
              // TextField(),
              Divider(
                color: Colors.black,
              ),
              // Text("hello"),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  child: Text("your artists "),
                ),
              ]),
              SizedBox(height: 36),

              Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/image3.jpg",
                          // fit: BoxFit.cover
                        ),
                        radius: 80.0,

                        // child: Container(
                        //   padding: const EdgeInsets.all(0.0),
                        //   child: Text('Alessia Cara'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'adele',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 200),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ]),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/Ed-Sheeran-New-Pub-2-2021-Dan-Martensen-.jpg",
                          // fit: BoxFit.cover
                        ),
                        radius: 80.0,

                        // child: Container(
                        //   padding: const EdgeInsets.all(0.0),
                        //   child: Text('Alessia Cara'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Ed-Sheeran',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 145),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ]),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/image9.jpg",
                          // fit: BoxFit.cover
                        ),
                        radius: 80.0,

                        // child: Container(
                        //   padding: const EdgeInsets.all(0.0),
                        //   child: Text('Alessia Cara'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Zara Larsson',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 125),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ]),
                ],
              ),
            ],
          ),
        ));
  }
}
