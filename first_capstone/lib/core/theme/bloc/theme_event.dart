part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

final class InitialThemeEvent extends ThemeEvent {}

final class SwitchThemeEvent extends ThemeEvent {}
