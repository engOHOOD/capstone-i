import 'package:first_capstone/core/widget/image_widget.dart';
import 'package:first_capstone/features/epsiode/cubit/epsiode_cubit.dart';
import 'package:first_capstone/features/epsiode/episode_player/cubit/episode_player_cubit.dart';
import 'package:first_capstone/features/epsiode/episode_player/episode_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EpsiodeScreen extends StatelessWidget {
  const EpsiodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("herehey");
    context.read<EpsiodeCubit>().getEpisode();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<EpsiodeCubit, EpsiodeState>(
            builder: (context, state) {
              if (state is EpsiodeInitial) {
                return SizedBox.shrink();
              }
              if (state is EpsiodeLoaded) {
                return Column(
                  children: [
                    ImageWidget(
                      imagePath: state.episode.coverImage,
                      imageWidth: 80,
                      imageHight: 80,
                      imagePadding: 10,
                      imageBorderRedius: 20,
                    ),
                    Gap(10),
                     Text(
                      state.episode.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Gap(10),
                    Text(
                      state.episode.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Gap(10),


                    BlocProvider(
                      create: (context) =>
                          EpisodePlayerCubit(audioUrl: state.episode.audioUrl),
                      child: EpsiodePlayer(),
                    ),
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
