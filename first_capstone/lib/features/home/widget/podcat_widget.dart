import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PodcatWidget extends StatelessWidget {
  const PodcatWidget({super.key, required this.podcasts});
  final List<PodcastModel> podcasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: .horizontal,
        shrinkWrap: true,
        itemCount: podcasts.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            context.push(
              '${RouteKeys.home}/${RouteKeys.podcast}',
              extra: podcasts[index].id,
            );
          },
          child: AnyImageView(
            imagePath: podcasts[index].coverImage,
            width: 200,
            fit: .cover,
            padding: EdgeInsets.all(10),
            borderRadius: BorderRadius.circular(25),
            placeholderWidget: CircularProgressIndicator(),
            errorWidget: Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
