import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  ServiceLocator._();
  static Future<void> configureDependencies() async {
    GetIt.I.registerSingleton<PodcastRepo>(PodcastRepo());
  }
}
