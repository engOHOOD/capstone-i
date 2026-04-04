import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

part 'episode_player_state.dart';

class EpisodePlayerCubit extends Cubit<EpisodePlayerState> {
  AudioPlayer epsiodePlayer = AudioPlayer();
  Duration epsiodeDuration = Duration.zero;
  Duration epsiodePosition = Duration.zero;
  final String audioUrl;
  EpisodePlayerCubit({required this.audioUrl}) : super(EpisodePlayerInitial()) {
    print("heref");
    epsiodePlayer.positionStream.listen((position) {
      epsiodePosition = position;
      if (epsiodeDuration >= epsiodePosition) {
        updateEpsiodePlayer();
      }
    });
    print("i");

    epsiodePlayer.durationStream.listen((duration) {
      if (duration != null) {
        epsiodeDuration = duration;
      }
      print(duration);
    });
    print("i1");

    epsiodePlayer.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        epsiodePosition = Duration.zero;

        epsiodePlayer.pause();
        epsiodePlayer.seek(epsiodePosition);
      }
    });
  }

  void updateEpsiodePlayer() {
    emit(EpsiodePlayerLoaded());
    print("2");
  }

  Future<void> loadEpsiode() async {
    try {
      await epsiodePlayer.setAsset(audioUrl);
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

  void handleSeek(double value) {
    epsiodePlayer.seek(Duration(seconds: value.toInt()));
  }

  Future<void> back10Sec() async {
    final currentPostion = epsiodePlayer.position.inSeconds;

    if (currentPostion >= 10) {
      await epsiodePlayer.seek(
        Duration(seconds: epsiodePlayer.position.inSeconds - 10),
      );
    } else {
      await epsiodePlayer.seek(Duration(seconds: 0));
    }
  }

  Future<void> forward30Sec() async {
    final currentPostion = epsiodePlayer.position.inSeconds;

    if (currentPostion <= epsiodePlayer.duration!.inSeconds-30) {
      await epsiodePlayer.seek(
        Duration(seconds: epsiodePlayer.position.inSeconds + 30),
      );
    } else {
      await epsiodePlayer.seek(Duration(seconds: epsiodePlayer.duration!.inSeconds));
    }
  }

  @override
  Future<void> close() async {
    print("i5");

    await epsiodePlayer.dispose();
    return super.close();
  }
}
