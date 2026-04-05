part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}
final class ProfileInfoLoaded extends ProfileState{
  final UserModel user;

  ProfileInfoLoaded({required this.user});
}
final class ProfileInfoError extends ProfileState{
 
}