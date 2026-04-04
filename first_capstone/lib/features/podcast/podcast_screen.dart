import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/features/podcast/cubit/podcast_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PodcastCubit>().getPodcast();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            BlocBuilder<PodcastCubit, PodcastState>(
              buildWhen: (previous, current) {
                if (current is LoadedPodcast) {
                  return true;
                }

                return false;
              },

              builder: (context, state) {
                if (state is PodcastInitial) {
                  return SliverToBoxAdapter(child: SizedBox.shrink());
                }
                if (state is LoadedPodcast) {

                  return SliverMainAxisGroup(
                    slivers: [
                      SliverAppBar(
                        leading: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            context.pop();
                          },
                        ),

                        floating: true,
                        pinned: true,
                        expandedHeight: 300,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: false,
                          title: Text(
                            state.podcast.title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
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
                        child: Center(
                          child: Text(
                            state.podcast.description,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),
            SliverGap(15),
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
                    itemBuilder: (context, index) => ListTile(
                      leading: ImageWidget(
                        imagePath: state.epsiodes[index].coverImage,
                        imageWidth: 40,
                        imageHight: 40,
                        imageBorderRedius: 10,
                        imagePadding: 2,
                      ),

                      title: Text(
                        state.epsiodes[index].title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
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
