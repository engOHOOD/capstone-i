import 'package:first_capstone/core/config/service_locator.dart';
import 'package:first_capstone/core/navigation/route_app.dart';
import 'package:first_capstone/core/theme/cubit/theme_cubit.dart';
import 'package:first_capstone/core/theme/dark_theme.dart';
import 'package:first_capstone/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.configureDependencies();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeMode>(
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
                theme:LightTheme.lightTheme,
                darkTheme: DarkTheme.darkTheme,
                themeMode:state,
                routerConfig: RouteApp.router,
              );
            },
          ),
        );
      },
    );
  }
}
