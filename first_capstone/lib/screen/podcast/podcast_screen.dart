import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/screen/podcast/cubit/podcast_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PodcastCubit>().getPodcast();
    // context.read<PodcastCubit>().getPodcastEpsiodes();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            BlocBuilder<PodcastCubit, PodcastState>(
              buildWhen: (previous, current) => current is LoadedPodcast,

              builder: (context, state) {
                if (state is PodcastInitial) {
                  return SliverToBoxAdapter(child: SizedBox.shrink());
                }
                if (state is LoadedPodcast) {
                  return SliverMainAxisGroup(
                    slivers: [
                      SliverAppBar(
                        actions: [
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        ],
                        automaticallyImplyLeading: false,
                        floating: true,
                        expandedHeight: 300,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: false,
                          title: Text(state.podcast.title),
                          background: AnyImageView(
                            imagePath: state.podcast.coverImage,
                            height: 180,
                            width: 200,
                            fit: .cover,
                            padding: EdgeInsets.all(10),
                            borderRadius: BorderRadius.circular(25),
                            placeholderWidget: CircularProgressIndicator(),
                            errorWidget: Icon(Icons.error),
                          ),
                        ),
                      ),

                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 20,
                          child: Center(child: Text('افضل البرامج تنتظرك هنا')),
                        ),
                      ),
                    ],
                  );
                }
                return SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),

            BlocBuilder<PodcastCubit, PodcastState>(
              buildWhen: (previous, current) {
                if (current is LoadedPodcast) {
                  return true;
                }
                if (current is LoadedPodcastEpsiodes) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                if (state is PodcastInitial) {
                  return SliverToBoxAdapter(child: SizedBox.shrink());
                }
                if (state is LoadedPodcastEpsiodes) {
                  return SliverList.builder(
                    itemCount: state.epsiodes.length,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text(state.epsiodes[index].title)),
                  );
                }
                return SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),
          ],
        ),
      ),
    );
  }
}
