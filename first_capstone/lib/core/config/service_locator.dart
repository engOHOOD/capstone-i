import 'package:first_capstone/core/repo/authentication_repo.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/core/repo/user_repo.dart';
import 'package:get_it/get_it.dart';


// Initializes and registers all repositories in GetIt service locator
class ServiceLocator {
  ServiceLocator._();
  static Future<void> configureDependencies() async {
    GetIt.I.registerSingleton<AuthenticationRepo>(AuthenticationRepo());
    GetIt.I.registerSingleton<UsersRepo>(UsersRepo());
    GetIt.I.registerSingleton<PodcastRepo>(PodcastRepo());
    
  }
}
