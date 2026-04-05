import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:meta/meta.dart';

part 'all_podcasts_state.dart';

class AllPodcastsCubit extends Cubit<AllPodcastsState> {
  final PodcastRepo podcastRepo;
  
  AllPodcastsCubit({required this.podcastRepo}) : super(AllPodcastsInitial());

 // shows all episodes in ascending order by date
  Future<void> showAllPodcasts() async {
    List<PodcastModel> podcats = await podcastRepo.loadPodcasts();
    emit(LoadedAllPodcasts(podcasts: podcats));
  }
}
