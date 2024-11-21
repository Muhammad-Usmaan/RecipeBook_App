import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/screens/start-app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.playfair(
            fontSize: 34,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          headlineMedium: GoogleFonts.playfair(
            fontSize: 29,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          headlineSmall: GoogleFonts.zenMaruGothic(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          bodySmall: GoogleFonts.zenMaruGothic(
            fontSize: 16,
            color: Colors.grey

          )
        )
      ),
      home: StartView(),
    );
  }
}