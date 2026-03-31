import 'package:first_capstone/screen/epsiode/cubit/epsiode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpsiodeScreen extends StatelessWidget {
  const EpsiodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("herehey");

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [EpsiodePlayer()]),
        ),
      ),
    );
  }
}

class EpsiodePlayer extends StatelessWidget {
  const EpsiodePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpsiodeCubit, EpsiodeState>(
      builder: (context, state) {
        print("i6");

        if (state is EpsiodeInitial) {
          print("i7");

          return Center(child: CircularProgressIndicator());
        }
        if (state is EpsiodePlayerLoaded) {
          print("i8");

          return Column(
            children: [
              Slider(
                value: context
                    .read<EpsiodeCubit>()
                    .epsiodePosition
                    .inSeconds
                    .toDouble(),
                min: 0.0,
                max: context
                    .read<EpsiodeCubit>()
                    .epsiodeDuration
                    .inSeconds
                    .toDouble(),
                onChanged: (double value) {
                  print("i9");
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    formatDuration(
                      context.read<EpsiodeCubit>().epsiodePosition,
                    ),
                  ),
                  Text(
                    formatDuration(
                      context.read<EpsiodeCubit>().epsiodeDuration,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  print("i10");

                  context.read<EpsiodeCubit>().playOrPause();
                },
                icon: Icon(
                  context.read<EpsiodeCubit>().epsiodePlayer.playing
                      ? Icons.pause
                      : Icons.play_arrow,
                ),
              ),
            ],
          );
        }
        return Text("error");
      },
    );
  }
}

String formatDuration(Duration duration) {
  final h = duration.inHours;
  final min = duration.inMinutes.remainder(60);
  final sec = duration.inSeconds.remainder(60);
  return h > 0
      ? '${h.toString().padLeft(2, '0')}:'
            '${min.toString().padLeft(2, '0')}:'
            '${sec.toString().padLeft(2, '0')}'
      : '${min.toString().padLeft(2, '0')}:'
            '${sec.toString().padLeft(2, '0')}';
}
