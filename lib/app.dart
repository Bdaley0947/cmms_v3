import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class CMMSApp extends StatelessWidget {
  const CMMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMMS Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        primaryColor: Colors.blue[400],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Fira Code',
            fontSize: 14,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Fira Code',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF2D2D2D),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 1,
          titleTextStyle: TextStyle(
            fontFamily: 'Fira Code',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
