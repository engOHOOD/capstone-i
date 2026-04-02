import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:flutter/material.dart';

class EpsiodeHorizintalListWidget extends StatelessWidget {
  const EpsiodeHorizintalListWidget({super.key, required this.podcasts});
  final List<EpsiodeModel> podcasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: .horizontal,
        shrinkWrap: true,
        itemCount: podcasts.length,
        itemBuilder: (context, index) =>
            ImageWidget(imagePath: podcasts[index].coverImage),
      ),
    );
  }
}
