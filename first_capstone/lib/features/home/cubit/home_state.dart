part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class LoadedPodcasts extends HomeState {
  final List<PodacastModel> podcasts;

  LoadedPodcasts({required this.podcasts});
}

final class LoadedEpsiodes extends HomeState {
  final List<EpsiodeModel> epsiodes;

  LoadedEpsiodes({required this.epsiodes});
}
