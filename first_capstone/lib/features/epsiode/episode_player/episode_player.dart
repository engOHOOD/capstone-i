import 'package:first_capstone/core/extension/extension.dart';
import 'package:first_capstone/features/epsiode/episode_player/cubit/episode_player_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EpsiodePlayer extends StatelessWidget {
  const EpsiodePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EpisodePlayerCubit>().loadEpsiode();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<EpisodePlayerCubit, EpisodePlayerState>(
        builder: (context, state) {

          if (state is EpisodePlayerInitial) {

            return Center(child: CircularProgressIndicator());
          }
          if (state is EpsiodePlayerLoaded) {

            return Column(
              children: [
                Slider(
                  value: context
                      .read<EpisodePlayerCubit>()
                      .epsiodePosition
                      .inSeconds
                      .toDouble(),
                  min: 0.0,
                  max: context
                      .read<EpisodePlayerCubit>()
                      .epsiodeDuration
                      .inSeconds
                      .toDouble(),
                  onChanged: (double value) {
                  },
                  onChangeEnd: (value) =>
                      context.read<EpisodePlayerCubit>().handleSeek(value),
                ),
                Gap(5),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      (context.read<EpisodePlayerCubit>().epsiodePosition)
                          .format(),
                    ),
                    Text(
                      (context.read<EpisodePlayerCubit>().epsiodeDuration)
                          .format(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {

                        context.read<EpisodePlayerCubit>().back10Sec();
                      },
                      icon: Icon(Icons.forward_10_rounded),
                    ),
                    IconButton(
                      onPressed: () {

                        context.read<EpisodePlayerCubit>().playOrPause();
                      },
                      icon: Icon(
                        context.read<EpisodePlayerCubit>().epsiodePlayer.playing
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<EpisodePlayerCubit>().forward30Sec();
                      },
                      icon: Icon(Icons.replay_30_rounded),
                    ),
                  ],
                ),
              ],
            );
          }
          if(state is EpsiodePlayerError){
            return SizedBox.shrink();
          }
          else {
            return SizedBox.shrink();
        }}
      ),
    );
  }
}
