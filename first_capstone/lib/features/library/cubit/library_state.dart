part of 'library_cubit.dart';

@immutable
sealed class LibraryState {}

final class LibraryInitial extends LibraryState {}

class LibraryLoaded extends LibraryState {
  final List<PodacastModel> podcasts;
  final List<EpsiodeModel> epsiodes;

  LibraryLoaded({required this.podcasts, required this.epsiodes});
}
