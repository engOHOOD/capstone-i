import 'package:first_capstone/core/widget/episodes_list.dart';
import 'package:first_capstone/core/widget/podcast_grid.dart';
import 'package:first_capstone/features/library/cubit/library_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<LibraryCubit>().showLibrary();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("المكتبة"),
          bottom: TabBar(
            tabs: [
              Tab(text: "البرامج"),
              Tab(text: "الحلقات المفضلة"),
            ],
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<LibraryCubit, LibraryState>(
            builder: (context, state) {
              if (state is LibraryInitial) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is LibraryLoaded) {
                return TabBarView(
                  children: [
                    PodcastGrid(podcasts: state.podcasts),

                    EpisodesList(episodes: state.epsiodes),
                  ],
                );
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
