import 'package:flutter/cupertino.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String lable;
  const AlbumCard({
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
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(lable),
        
      ],
    );
  }
}
