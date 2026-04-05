part of 'all_podcasts_cubit.dart';

@immutable
sealed class AllPodcastsState {}

final class AllPodcastsInitial extends AllPodcastsState {}

final class LoadedAllPodcasts extends AllPodcastsState {
  final List<PodcastModel> podcasts;

  LoadedAllPodcasts({required this.podcasts});
}