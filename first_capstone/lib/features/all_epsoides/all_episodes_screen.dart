import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/widget/episodes_list.dart';
import 'package:first_capstone/features/all_epsoides/cubit/all_episodes_cubit.dart';
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
            return EpisodesList(episodes: state.allEpisodes);
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
