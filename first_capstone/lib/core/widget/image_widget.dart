import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final int imageWidth;
  final int imageHight;
  final double imagePadding;
  final double imageBorderRedius;

  const ImageWidget({
    super.key,
    required this.imagePath,
    required this.imageWidth,
    required this.imageHight,
    required this.imagePadding,
    required this.imageBorderRedius,
  });

  @override
  Widget build(BuildContext context) {
    return AnyImageView(
      imagePath: imagePath,
      width: imageWidth.sp,
      height: imageHight.sp,
      fit: .fitHeight,
      padding: EdgeInsets.all(imagePadding.sp),
      borderRadius: BorderRadius.circular(imageBorderRedius.sp),
      placeholderWidget: CircularProgressIndicator(),
      errorWidget: Icon(Icons.error),
    );
  }
}
