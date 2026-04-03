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
    List<PodacastModel> podcats = await podcastRepo.loadPodcasts();
    podcats.sort((a, b) => a.rating.compareTo(b.rating));
    List<PodacastModel> topFive = podcats.take(5).toList();

    emit(LoadedPodcasts(podcasts: podcats));
  }

  Future<void> showEpsiodes() async {
    List<EpsiodeModel> epsiodes = await podcastRepo.loadEpsiodes();
    emit(LoadedEpsiodes(epsiodes: epsiodes));
  }
}
