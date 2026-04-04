import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:meta/meta.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
    final PodcastRepo podcastRepo;

  SearchCubit({required this.podcastRepo}) : super(SearchInitial());

  Future<void> showPodcasts() async {
    List<PodacastModel> podcats = await podcastRepo.loadPodcasts();
    podcats.sort((a, b) => a.followersCount.compareTo(b.followersCount));
    List<PodacastModel> topFive = podcats.take(5).toList();
    emit(LoadedPodcasts(podcasts: topFive));
  }

  Future<void> showEpsiodes() async {
    List<EpsiodeModel> epsiodes = await podcastRepo.loadEpsiodes();
     epsiodes.sort((a, b) => a.publishDate.compareTo(b.publishDate));
    List<EpsiodeModel> topTwenty = epsiodes.take(20).toList();
    emit(LoadedEpsiodes(epsiodes: topTwenty));
  }

Future<void> search() async {
    List<EpsiodeModel> epsiodes = await podcastRepo.loadEpsiodes();
    emit(LoadedEpsiodes(epsiodes: epsiodes));
  }



}
