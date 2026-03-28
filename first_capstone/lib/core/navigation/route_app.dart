import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/screen/home/bloc/home_bloc.dart';
import 'package:first_capstone/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteApp {
  RouteApp._();
  static final router = GoRouter(
    initialLocation: RouteKeys.home,
    routes: [
      GoRoute(
        path: RouteKeys.home,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => HomeBloc(),
            child: HomeScreen(),
          ) ;
        },
      ),
    ],
  );
}
