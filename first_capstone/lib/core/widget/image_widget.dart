import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  const ImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return AnyImageView(
      imagePath: imagePath,
      width: 200,
      fit: .cover,
      padding: EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(25),
      placeholderWidget: CircularProgressIndicator(),
      errorWidget: Icon(Icons.error),
    );
  }
}
