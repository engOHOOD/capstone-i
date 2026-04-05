
import 'package:fpdart/fpdart.dart';

class AuthenticationRepo {

  // login method that returns Either:
  // right -> token (success)
  // left -> error message (failure)
  Future<Either<String, String>> login({
    required String email,
    required String password,
  }) async {
    try {
      // fake token
      final token ="dfghjkl3456789xcvbnm,";
      await Future.delayed(Duration(seconds: 1));

      if (email == "ohood@gmail.com" && password == "123456789") {
        return Either.right(token);
      }

      return Either.left("خطأ في البريد الألكتروني او كلمة المرور");
    } catch (error) {
      return Either.left("تعذر تسجيل الدخول، حاول مرة أخرى.");
    }
  }
}
