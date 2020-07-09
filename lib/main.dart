import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_darkmode_ui/homePage.dart';
import 'package:flutter_darkmode_ui/model/fourniture.dart';
import 'package:flutter_darkmode_ui/theme/bloc/theme_bloc.dart';
import 'package:flutter_darkmode_ui/theme/bloc/theme_state.dart';

void main() => runApp(MyApp());
 var currentFourniture = fournitureList.fournitures[0];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Material App',
      theme: state.themeData,
      home: HHHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
