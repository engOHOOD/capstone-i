import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

part 'epsiode_state.dart';

class EpsiodeCubit extends Cubit<EpsiodeState> {
  AudioPlayer epsiodePlayer = AudioPlayer();
  Duration epsiodeDuration = Duration.zero;
  Duration epsiodePosition = Duration.zero;
  EpsiodeCubit() : super(EpsiodeInitial()) {
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

  Future<void> loadEpsiode() async {
    try {
      await epsiodePlayer.setAsset(
"assets/podcasts/swalif/YTDown.com_Shorts_How-much-a-UI-UX-Designer-Makes-UI-UX-De_Media_NWylkHRzqHA_008_128k.mp3"      );
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
