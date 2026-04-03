import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/screen/podcasts/cubit/all_podcasts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllPodcastsScreen extends StatelessWidget {
  const AllPodcastsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AllPodcastsCubit>().showAllPodcasts();
    return Scaffold(
      body: BlocBuilder<AllPodcastsCubit, AllPodcastsState>(
        builder: (context, state) {
          if (state is AllPodcastsInitial) {
            return SizedBox.shrink();
          }
          if (state is LoadedAllPodcasts) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.podcasts.length,
              itemBuilder: (context, index) => ImageWidget(
                imagePath: state.podcasts[index].coverImage,
                imageWidth: 50,
                imageHight: 50,
                imageBorderRedius: 10,
                imagePadding: 5,
              ),
            );
          }
          ;
          return SizedBox.shrink();
        },
      ),
    );
  }
}
