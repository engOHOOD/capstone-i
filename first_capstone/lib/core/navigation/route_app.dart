import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/features/all_epsoides/all_episodes_screen.dart';
import 'package:first_capstone/features/all_epsoides/cubit/all_episodes_cubit.dart';
import 'package:first_capstone/features/bottom_navigation/bottom_navigation_screen.dart';
import 'package:first_capstone/features/epsiode/cubit/epsiode_cubit.dart';
import 'package:first_capstone/features/epsiode/epsiode_screen.dart';
import 'package:first_capstone/features/home/cubit/home_cubit.dart';
import 'package:first_capstone/features/home/home_screen.dart';
import 'package:first_capstone/features/library/bloc/library_bloc.dart';
import 'package:first_capstone/features/library/library_screen.dart';
import 'package:first_capstone/features/podcast/cubit/podcast_cubit.dart';
import 'package:first_capstone/features/podcast/podcast_screen.dart';
import 'package:first_capstone/features/all_podcasts/all_podcasts_screen.dart';
import 'package:first_capstone/features/all_podcasts/cubit/all_podcasts_cubit.dart';
import 'package:first_capstone/features/profile/bloc/profile_bloc.dart';
import 'package:first_capstone/features/profile/profile_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteApp {
  RouteApp._();
  static final router = GoRouter(
    initialLocation: RouteKeys.home,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavigationScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteKeys.home,
                builder: (context, state) {
                  return BlocProvider(
                    create: (context) => HomeCubit(podcastRepo: GetIt.I.get()),
                    child: HomeScreen(),
                  );
                },
                routes: [
                  GoRoute(
                    path: RouteKeys.podcast,
                    builder: (context, state) {
                      final id = state.extra as int;
                      print("here1$id");
                      return BlocProvider(
                        create: (context) =>
                            PodcastCubit(podcastRepo: GetIt.I.get(), id: id),
                        child: PodcastScreen(),
                      );
                    },
                  ),
                  GoRoute(
                    path: RouteKeys.allPodcasts,
                    builder: (context, state) {
                      return BlocProvider(
                        create: (context) =>
                            AllPodcastsCubit(podcastRepo: GetIt.I.get()),
                        child: AllPodcastsScreen(),
                      );
                    },
                  ),

                  GoRoute(
                    path: RouteKeys.allEpisode,
                    builder: (context, state) {
                      return BlocProvider(
                        create: (context) =>
                            AllEpisodesCubit(podcastRepo: GetIt.I.get()),
                        child: AllEpisodesScreen(),
                      );
                    },
                  ),
                  GoRoute(
                    path: RouteKeys.episode,
                    builder: (context, state) {
                      final id = state.extra as int;
                      final podcastId = state.extra as int;

                      return BlocProvider(
                        create: (context) =>
                            EpsiodeCubit(podcastRepo: GetIt.I.get(), id: id,podcastId: podcastId),
                        child: EpsiodeScreen(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteKeys.search,
                builder: (context, state) {
                  print("here");

                  return BlocProvider(
                    create: (context) =>
                        EpsiodeCubit(podcastRepo: GetIt.I.get(), id: 1, podcastId: 1),
                    child: EpsiodeScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteKeys.home,
                builder: (context, state) {
                  return BlocProvider(
                    create: (context) => HomeCubit(podcastRepo: GetIt.I.get()),
                    child: HomeScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteKeys.library,
                builder: (context, state) {
                  return BlocProvider(
                    create: (context) => LibraryBloc(),
                    child: LibraryScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteKeys.profile,
                builder: (context, state) {
                  return BlocProvider(
                    create: (context) => ProfileBloc(),
                    child: ProfileScreen(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
