import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final PodcastRepo podcastRepo;
  HomeCubit({required this.podcastRepo}) : super(HomeInitial());

  Future<void> showPodcasts() async {
    List<PodcastModel> podcats = await podcastRepo.loadPodcasts();
    podcats.sort((a, b) => b.rating.compareTo(a.rating));
    List<PodcastModel> topFive = podcats.take(5).toList();
    emit(LoadedPodcasts(podcasts: topFive));
  }

  Future<void> showEpsiodes() async {
    List<EpisodeModel> epsiodes = await podcastRepo.loadEpsiodes();
    epsiodes.sort((a, b) => b.publishDate.compareTo(a.publishDate));
    List<EpisodeModel> topTen = epsiodes.take(10).toList();
    emit(LoadedEpsiodes(epsiodes: topTen));
  }
}
