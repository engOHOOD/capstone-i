import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    
    on<InitialThemeEvent>((event, emit) async {
      bool currentTheme = await isDark();
      emit(currentTheme ? ThemeMode.dark : ThemeMode.light);
    });
    on<SwitchThemeEvent>((event, emit) async {
      bool currentTheme = await isDark();
      await setTheme(!currentTheme);
      emit(!currentTheme ? ThemeMode.dark : ThemeMode.light);
    });
  }
}

Future<bool> isDark() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isDark') ?? false;
}

Future<void> setTheme(bool isDark) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isDark', isDark);
}
