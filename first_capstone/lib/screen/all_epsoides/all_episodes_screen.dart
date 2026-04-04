import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/screen/all_epsoides/cubit/all_episodes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AllEpisodesScreen extends StatelessWidget {
  const AllEpisodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AllEpisodesCubit>().loadAllEpisodes();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'احدث الحلقات',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: BlocBuilder<AllEpisodesCubit, AllEpisodesState>(
        builder: (context, state) {
          if (state is AllEpisodesInitial) {
            return SizedBox.shrink();
          }
          if (state is LoadedAllEpisodes) {
            return ListView.builder(
              itemCount: state.allEpisodes.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => context.push(
                  "${RouteKeys.home}/${RouteKeys.episode}",
                  extra: state.allEpisodes[index].id,
                ),
                child: ListTile(
                  title: Text(
                    state.allEpisodes[index].title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  leading: AnyImageView(
                    imagePath: state.allEpisodes[index].coverImage,
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
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
