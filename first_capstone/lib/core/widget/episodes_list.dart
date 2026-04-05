import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EpisodesList extends StatelessWidget {
  final List<EpsiodeModel> episodes;
  const EpisodesList({super.key, required this.episodes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: episodes.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => context.push(
                  "${RouteKeys.home}/${RouteKeys.episode}",
                  extra: episodes[index].id,
                ),
                child: ListTile(
                  title: Text(
                    episodes[index].title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  leading: AnyImageView(
                    imagePath: episodes[index].coverImage,
                    fit: .fitHeight,
                    borderRadius: BorderRadius.circular(5),
                    placeholderWidget: CircularProgressIndicator(),
                    errorWidget: Icon(Icons.error),
                  ),
                  trailing: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: Theme.of(context).colorScheme.surface,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            );
}}