import 'package:flutter/material.dart';

import 'pages/home_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        fontFamily: 'SFProText',
        appBarTheme: const AppBarTheme(
          color: Color(0xFFe7eefb),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
