import 'package:flutter/material.dart';
import 'TimerScreen.dart';
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      home: TimerScreen()
    );
  }
}