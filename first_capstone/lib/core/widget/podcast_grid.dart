import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PodcastGrid extends StatelessWidget {
  final List<PodcastModel> podcasts;
  const PodcastGrid({super.key, required this.podcasts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: podcasts.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.push(
                    '${RouteKeys.home}/${RouteKeys.podcast}',
                    extra: podcasts[index].id,
                  );
                },
                child: ImageWidget(
                  imagePath: podcasts[index].coverImage,
                  imageWidth: 50,
                  imageHight: 50,
                  imageBorderRedius: 30,
                  imagePadding: 5,
                ),
              ),
            );
  }
}