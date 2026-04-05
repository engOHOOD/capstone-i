import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/core/repo/user_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:first_capstone/model/user_model/user_model.dart';
import 'package:meta/meta.dart';

part 'library_state.dart';

class LibraryCubit extends Cubit<LibraryState> {
  final PodcastRepo podcastRepo;
  final UsersRepo userRepo;

  LibraryCubit({required this.podcastRepo, required this.userRepo})
    : super(LibraryInitial());

  Future<void> showLibrary() async {
    UserModel currentUser = await userRepo.getCurrentUser;
    List<PodcastModel> podcats = await podcastRepo.loadPodcasts();
    List<EpisodeModel> epsiodes = await podcastRepo.loadEpsiodes();

    List<PodcastModel> userPodcasts = podcats
        .where((pod) => currentUser.followedPodcasts.contains(pod.id))
        .toList();
    List<EpisodeModel> userLikedEpisodes = epsiodes
        .where((ep) => currentUser.likes.contains(ep.id))
        .toList();

    emit(LibraryLoaded(epsiodes: userLikedEpisodes, podcasts: userPodcasts));
  }
}
