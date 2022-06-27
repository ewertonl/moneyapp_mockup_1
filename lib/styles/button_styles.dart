import 'package:flutter/material.dart';

class AppButtonStyle {
  final BuildContext context;

  AppButtonStyle(this.context);

  ElevatedButtonThemeData get elevatedButtonThemeData {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size.fromHeight(50),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  ButtonStyle get secondaryButtonStyle {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.surface),
      overlayColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.primary.withAlpha(48)),
      foregroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.onSurface),
    );
  }
}
