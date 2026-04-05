
import 'package:first_capstone/core/widget/podcast_grid.dart';
import 'package:first_capstone/features/all_podcasts/cubit/all_podcasts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllPodcastsScreen extends StatelessWidget {
  const AllPodcastsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AllPodcastsCubit>().showAllPodcasts();
    return Scaffold(
      appBar: AppBar(
        title: Text('البرامج', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: BlocBuilder<AllPodcastsCubit, AllPodcastsState>(
        builder: (context, state) {
          if (state is AllPodcastsInitial) {
            return Center(child: CircularProgressIndicator(),);
          }
          // shows all podcasts
          if (state is LoadedAllPodcasts) {
            return PodcastGrid(podcasts: state.podcasts,);
          }
          ;
          return SizedBox.shrink();
        },
      ),
    );
  }
}
