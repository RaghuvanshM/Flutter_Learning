import 'package:flutter/material.dart';
import 'package:flutter_ui/home_page.dart';
import 'package:flutter_ui/screen/travelapp/navpages/main_page.dart';
import 'package:flutter_ui/screen/travelapp/navpages/my_page.dart';
import 'package:flutter_ui/screen/travelapp/welcome_page.dart';
import 'package:flutter_ui/video_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainPage());
  }
}
