part of 'epsiode_cubit.dart';

@immutable
sealed class EpsiodeState {}

final class EpsiodeInitial extends EpsiodeState {}

final class EpsiodeLoaded extends EpsiodeState{
  final EpsiodeModel episode;

  EpsiodeLoaded({required this.episode});
}
final class EpsiodeError extends EpsiodeState{}