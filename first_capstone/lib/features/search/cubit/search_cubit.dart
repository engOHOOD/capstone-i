import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:meta/meta.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final PodcastRepo podcastRepo;

  SearchCubit({required this.podcastRepo}) : super(SearchInitial()) {
    showPodcasts();
    showEpsiodes();
  }

  Future<void> showPodcasts() async {
    List<PodcastModel> podcats = await podcastRepo.loadPodcasts();
    podcats.sort((a, b) => a.followersCount.compareTo(b.followersCount));
    List<PodcastModel> topFive = podcats.take(5).toList();
    emit(LoadedPodcasts(podcasts: topFive));
  }

  Future<void> showEpsiodes() async {
    List<EpisodeModel> epsiodes = await podcastRepo.loadEpsiodes();
    epsiodes.sort((a, b) => a.likes.compareTo(b.likes));
    List<EpisodeModel> topFive = epsiodes.take(5).toList();
    emit(LoadedEpsiodes(epsiodes: topFive));
  }
Future<void> search(String search) async {
  final allEpisodes = await podcastRepo.loadEpsiodes();
  final allPodcasts = await podcastRepo.loadPodcasts();

  final filteredPodcasts = allPodcasts
      .where((p) => p.title.contains(search.trim()))
      .toList();

  final filteredEpisodes = allEpisodes
      .where((e) => e.title.contains(search.trim()))
      .toList();

  // Debug print statements
  print("Search query: $search");
  print("Filtered Podcasts: ${filteredPodcasts.map((p) => p.title).toList()}");
  print("Filtered Episodes: ${filteredEpisodes.map((e) => e.title).toList()}");

  emit(SearchResult(podcasts: filteredPodcasts, epsiodes: filteredEpisodes));
}}