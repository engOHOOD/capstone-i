part of 'episode_player_cubit.dart';

@immutable
sealed class EpisodePlayerState {}

final class EpisodePlayerInitial extends EpisodePlayerState {}
final class EpsiodePlayerLoaded extends EpisodePlayerState{}

final class EpsiodePlayerError extends EpisodePlayerState{}