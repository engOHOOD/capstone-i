part of 'all_episodes_cubit.dart';

@immutable
sealed class AllEpisodesState {}

final class AllEpisodesInitial extends AllEpisodesState {}
final class LoadedAllEpisodes extends AllEpisodesState{
  final List<EpsiodeModel> allEpisodes;

  LoadedAllEpisodes({required this.allEpisodes});
}