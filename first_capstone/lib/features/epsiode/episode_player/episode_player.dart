import 'package:first_capstone/core/extention.dart';
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
          print("i6");

          if (state is EpisodePlayerInitial) {
            print("i7");

            return Center(child: CircularProgressIndicator());
          }
          if (state is EpsiodePlayerLoaded) {
            print("i8");

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
                    print("i9");
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
                        print("i10");

                        context.read<EpisodePlayerCubit>().back10Sec();
                      },
                      icon: Icon(Icons.forward_10_rounded),
                    ),
                    IconButton(
                      onPressed: () {
                        print("i10");

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
                        print("i10");

                        context.read<EpisodePlayerCubit>().forward30Sec();
                      },
                      icon: Icon(Icons.replay_30_rounded),
                    ),
                  ],
                ),
              ],
            );
          }
          return Text("error");
        },
      ),
    );
  }
}
