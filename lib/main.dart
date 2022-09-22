import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_theme_app_tutorial/core/theme/bloc/theme_bloc.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
        create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            if (state is LoadedThemeState) {
              return MaterialApp(
                theme: state.themeData,
                debugShowCheckedModeBanner: false,
                title: 'Theme App',
                home: const HomePage(),
              );
            }
            return Container();
          },
        ));
  }
}
