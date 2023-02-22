import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height * .8,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
              Colors.black.withOpacity(0),
            ])),
        child: (
            // padding: const EdgeInsets.only(top: 100),
            Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 30),
              child: Container(
                width: size.width,
                child: Text(
                  "Account",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Kidist Mamaye",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "email : kidistmamaye2002@gmail.com",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 150),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          fixedSize: Size(150, 50),
                          side: BorderSide(),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Text("logout")),
                ),
                SizedBox(
                  width: 100,
                ),
              ],
            )
          ],
        )),
      ),
    );
    // Padding(
    //   padding: const EdgeInsets.only(top: 0),
    //   child: Icon(
    //     Icons.account_circle,
    //     size: 20,
    //     color: Colors.white,
    //   ),
  }
}
