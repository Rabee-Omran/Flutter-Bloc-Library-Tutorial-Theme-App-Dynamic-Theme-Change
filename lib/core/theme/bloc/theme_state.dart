part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {}

class LoadedThemeState extends ThemeState {
  final ThemeData themeData;
 const LoadedThemeState({
    required this.themeData,
  });

  @override
  List<Object> get props => [themeData];
}
