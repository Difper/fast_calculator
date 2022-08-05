import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          //systemOverlayStyle: SystemUiOverlayStyle().copyWith(),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      buttonTheme:
          ButtonThemeData(colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.blueMenia)),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.green), side: const BorderSide(color: Colors.green)),
      textTheme: ThemeData.light().textTheme.copyWith(
            overline: const TextStyle(color: Colors.white),
            subtitle2: const TextStyle(color: Color.fromARGB(255, 12, 126, 82)),
            subtitle1: const TextStyle(color: Color.fromARGB(255, 177, 177, 177)),
            bodyText1: const TextStyle(color: Color.fromARGB(255, 177, 177, 177)),
            bodyText2: const TextStyle(color: Color.fromARGB(255, 252, 252, 252)), //Normal TEXT
            button: const TextStyle(color: Color.fromARGB(255, 177, 177, 177)),
            headline1: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            headline2: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            headline3: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            headline4: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            headline6: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            headline5: const TextStyle(color: Color.fromARGB(255, 177, 177, 177)),
            //subtitle1: TextStyle(fontSize: 25, color: _lightColor._textColor),
          ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color.fromARGB(255, 0, 255, 225),
          circularTrackColor: Colors.black45,
          linearTrackColor: Colors.blue,
          refreshBackgroundColor: Colors.white30),
      cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.red, cursorColor: Colors.green),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        iconColor: Colors.red,
        labelStyle: TextStyle(color: Colors.lime),
        hintStyle: TextStyle(color: Color.fromARGB(255, 55, 5, 195)),
        border: OutlineInputBorder(),
        floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600),
      ),
      tabBarTheme: const TabBarTheme(
          unselectedLabelColor: Color.fromARGB(73, 76, 175, 79),
          labelColor: Colors.green,
          indicatorSize: TabBarIndicatorSize.label),
      bottomAppBarTheme: const BottomAppBarTheme(shape: CircularNotchedRectangle()),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
