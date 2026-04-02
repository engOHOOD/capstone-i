import 'package:bloc/bloc.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:meta/meta.dart';

part 'podcast_state.dart';

class PodcastCubit extends Cubit<PodcastState> {
  final PodcastRepo podcastRepo;
  final int id;
  PodcastCubit({required this.podcastRepo, required this.id})
    : super(PodcastInitial());

  void getPodcast() {
    print("herewwwww");
    emit(LoadedPodcast(podcast: podcastRepo.loadOnePodcast(id)));
    print("herewwwww");
  }

  void getPodcastEpsiodes() {
    print("fffff");

    emit(
      LoadedPodcastEpsiodes(epsiodes: podcastRepo.loadOnePodcastEpsiodes(id)),
    );
    print("ffffff");
  }
}
