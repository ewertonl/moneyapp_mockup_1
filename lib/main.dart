import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import './styles/button_styles.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control',
      theme: ThemeData(
        useMaterial3: false,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff5e5ce5),
        ).copyWith(
          primary: const Color(0xff5e5ce5),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: AppButtonStyle(context).elevatedButtonThemeData,
      ),
      home: const HomePage(),
    );
  }
}
