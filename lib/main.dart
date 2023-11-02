import 'package:core_flutter_exam/Screens/HomeScreen.dart';
import 'package:core_flutter_exam/Screens/TableScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';

void main()
{
  runApp(ExamApp());
}
class ExamApp extends StatefulWidget {
  const ExamApp({super.key});

  @override
  State<ExamApp> createState() => _ExamAppState();
}

class _ExamAppState extends State<ExamApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
        // initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => HomeScreen(),
        'table': (context) => TableScreen(),

      },
    );
  }
}
