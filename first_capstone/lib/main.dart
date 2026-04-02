import 'package:first_capstone/core/navigation/route_app.dart';
import 'package:first_capstone/core/theme/bloc/theme_bloc.dart';
import 'package:first_capstone/core/theme/dark_theme.dart';
import 'package:first_capstone/core/theme/light_theme.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc()..add(InitialThemeEvent()),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          supportedLocales: const [Locale('ar')],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: DarkTheme.darkTheme,
          themeMode: ThemeMode.light,
          routerConfig: RouteApp.router,
        );
      },
    );
  }
}

Future<void> configureDependencies() async {
  GetIt.I.registerSingleton<PodcastRepo>(PodcastRepo());
}
