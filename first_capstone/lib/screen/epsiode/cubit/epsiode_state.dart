part of 'epsiode_cubit.dart';

@immutable
sealed class EpsiodeState {}

final class EpsiodeInitial extends EpsiodeState {}

final class EpsiodePlayerLoaded extends EpsiodeState{}

final class EpsiodePlayerError extends EpsiodeState{}