import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:first_capstone/screen/epsiode/cubit/epsiode_cubit.dart';
import 'package:first_capstone/screen/epsiode/epsiode_screen.dart';
import 'package:first_capstone/screen/home/cubit/home_cubit.dart';
import 'package:first_capstone/screen/home/home_screen.dart';
import 'package:first_capstone/screen/library/bloc/library_bloc.dart';
import 'package:first_capstone/screen/library/library_screen.dart';
import 'package:first_capstone/screen/podcast/cubit/podcast_cubit.dart';
import 'package:first_capstone/screen/podcast/podcast_screen.dart';
import 'package:first_capstone/screen/podcasts/all_podcasts_screen.dart';
import 'package:first_capstone/screen/podcasts/cubit/all_podcasts_cubit.dart';
import 'package:first_capstone/screen/profile/bloc/profile_bloc.dart';
import 'package:first_capstone/screen/profile/profile_screen.dart';
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
                    create: (context) => EpsiodeCubit()..loadEpsiode(),
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
