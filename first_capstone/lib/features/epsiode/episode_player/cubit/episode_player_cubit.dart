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
    epsiodePlayer.positionStream.listen((position) {
      epsiodePosition = position;
      if (epsiodeDuration >= epsiodePosition) {
        updateEpsiodePlayer();
      }
    });

    epsiodePlayer.durationStream.listen((duration) {
      if (duration != null) {
        epsiodeDuration = duration;
      }
    });

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
  }

  Future<void> loadEpsiode() async {
    try {
      await epsiodePlayer.setAsset(audioUrl);
      emit(EpsiodePlayerLoaded());
    } catch (_) {
      emit(EpsiodePlayerError());
    }
  }

  void playOrPause() {
    epsiodePlayer.playing ? epsiodePlayer.pause() : epsiodePlayer.play();
    emit(EpsiodePlayerLoaded());
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
    await epsiodePlayer.dispose();
    return super.close();
  }
}
