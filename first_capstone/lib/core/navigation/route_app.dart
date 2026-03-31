import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:first_capstone/screen/epsiode/cubit/epsiode_cubit.dart';
import 'package:first_capstone/screen/epsiode/epsiode_screen.dart';
import 'package:first_capstone/screen/home/bloc/home_bloc.dart';
import 'package:first_capstone/screen/home/home_screen.dart';
import 'package:first_capstone/screen/library/bloc/library_bloc.dart';
import 'package:first_capstone/screen/library/library_screen.dart';
import 'package:first_capstone/screen/profile/bloc/profile_bloc.dart';
import 'package:first_capstone/screen/profile/profile_screen.dart';
import 'package:first_capstone/screen/search/bloc/search_bloc.dart';
import 'package:first_capstone/screen/search/search_screen.dart';
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
                    create: (context) => HomeBloc(),
                    child: HomeScreen(),
                  );
                },
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
                    create: (context) => HomeBloc(),
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
