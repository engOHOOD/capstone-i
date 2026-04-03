import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:meta/meta.dart';

part 'all_episodes_state.dart';

class AllEpisodesCubit extends Cubit<AllEpisodesState> {
  final PodcastRepo podcastRepo;
  AllEpisodesCubit({required this.podcastRepo}) : super(AllEpisodesInitial());

 Future<void> loadAllEpisodes() async {
    List<EpsiodeModel> allEpisodes = await podcastRepo.loadEpsiodes();
    allEpisodes.sort((a, b) => b.publishDate.compareTo(a.publishDate));
    emit(LoadedAllEpisodes(allEpisodes: allEpisodes));
  }


}
