import 'package:fpdart/fpdart.dart';

class AuthenticationRepo {

  Future<Either<String, String>> login({
    required String email,
    required String password,
  }) async {
    try {
      final String token = "sdfghjkl123456789asdfghjkl;";
      await Future.delayed(Duration(seconds: 2));

      if (email == "ohood@gmail.com" && password == "123456789") {
        return Either.right(token);
      }

      return Either.left("Email or password isn't correct");
    } catch (error) {
      return Either.left("Error unable to login");
    }
  }
}
