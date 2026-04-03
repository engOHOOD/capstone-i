import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/screen/all_podcasts/cubit/all_podcasts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            return SizedBox.shrink();
          }
          if (state is LoadedAllPodcasts) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.podcasts.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.push(
                    '${RouteKeys.home}/${RouteKeys.podcast}',
                    extra: state.podcasts[index].id,
                  );
                },
                child: ImageWidget(
                  imagePath: state.podcasts[index].coverImage,
                  imageWidth: 50,
                  imageHight: 50,
                  imageBorderRedius: 30,
                  imagePadding: 5,
                ),
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
