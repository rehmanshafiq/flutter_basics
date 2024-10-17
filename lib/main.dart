import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/LoginScreen.dart';
import 'package:flutter_learning/screens/home_screen.dart';
import 'package:flutter_learning/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Loginscreen(),
        CatalogAppRoutes.homeRoute: (context) => HomeScreen(),
        CatalogAppRoutes.loginRoute: (context) => Loginscreen()
      },
    );
  }
}

