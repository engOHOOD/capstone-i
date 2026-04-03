import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

part 'epsiode_state.dart';

class EpsiodeCubit extends Cubit<EpsiodeState> {
  AudioPlayer epsiodePlayer = AudioPlayer();
  Duration epsiodeDuration = Duration.zero;
  Duration epsiodePosition = Duration.zero;
  final PodcastRepo podcastRepo;
  EpsiodeCubit({required this.podcastRepo}) : super(EpsiodeInitial()) {
    print("heref");
    epsiodePlayer.positionStream.listen((position) {
      epsiodePosition = position;
      updateEpsiodePlayer();
    });
    print("i");

    epsiodePlayer.durationStream.listen((duration) {
      if (duration != null) {
        epsiodeDuration = duration;
      }
      print(duration);
    });
    print("i1");
  }

  void updateEpsiodePlayer() {
    emit(EpsiodePlayerLoaded());
    print("2");
  }

  Future<void> loadEpsiode(int id) async {
    final EpsiodeModel episode;
    try {
      episode = podcastRepo.loadOneEpsiode(id);
      await epsiodePlayer.setAsset(episode.audioUrl);
      emit(EpsiodePlayerLoaded());
      print("i3");
    } catch (_) {
      emit(EpsiodePlayerError());
    }
  }

  void playOrPause() {
    epsiodePlayer.playing ? epsiodePlayer.pause() : epsiodePlayer.play();
    emit(EpsiodePlayerLoaded());
    print("i4");
  }

  @override
  Future<void> close() async {
    print("i5");

    await epsiodePlayer.dispose();
    return super.close();
  }
}
