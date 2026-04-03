part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class LoadedPodcasts extends SearchState {
  final List<PodacastModel> podcasts;

  LoadedPodcasts({required this.podcasts});
}

final class LoadedEpsiodes extends SearchState {
  final List<EpsiodeModel> epsiodes;

  LoadedEpsiodes({required this.epsiodes});
}
