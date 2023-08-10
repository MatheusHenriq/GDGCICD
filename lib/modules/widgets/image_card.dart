import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          foregroundImage: AssetImage(image),
          radius: 64,
        ),
      ),
    );
  }
}
