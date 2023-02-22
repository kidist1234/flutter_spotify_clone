import 'package:flutter/cupertino.dart';

class StartedAlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String lable;
  const StartedAlbumCard({
    Key? key,
    required this.image,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          // "assets/image7.jpg",
          width: 150,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
         Text(lable),
      ],
    );
  }
}