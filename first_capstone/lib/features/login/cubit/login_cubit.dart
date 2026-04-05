import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/authentication_repo.dart';
import 'package:first_capstone/core/repo/user_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthenticationRepo authRepo;
  final UsersRepo usersRepo;
  LoginCubit({required this.authRepo, required this.usersRepo})
    : super(LoginInitial());

  FutureOr<void> checkLogin(String email, String password) async {
    emit(LoadingState());
    
    await usersRepo.loadAllUsers();
    (await authRepo.login(email: email, password: password)).fold(
      (onLeft) {
        emit(ErrorState(message: onLeft));
      },
      (onRight) {
        emit(SuccessState());
      },
    );
  }
}
