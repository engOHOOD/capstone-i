import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/user_repo.dart';
import 'package:first_capstone/model/user_model/user_model.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UsersRepo usersRepo;
  ProfileCubit({required this.usersRepo}) : super(ProfileInitial()){

    getUserInfo();}

  Future<void> getUserInfo() async {

    emit(ProfileInfoLoaded(user: usersRepo.getCurrentUser));
        await Future.delayed(Duration.zero);


  }
}
