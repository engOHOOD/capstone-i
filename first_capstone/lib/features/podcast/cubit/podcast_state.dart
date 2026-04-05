part of 'podcast_cubit.dart';

@immutable
sealed class PodcastState {}

final class PodcastInitial extends PodcastState {}

final class LoadedPodcast extends PodcastState {
  final PodcastModel podcast;

  LoadedPodcast({required this.podcast});
}
final class LoadedPodcastEpsiodes extends PodcastState {
  final List<EpisodeModel> epsiodes;

  LoadedPodcastEpsiodes({required this.epsiodes});
}