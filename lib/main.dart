import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_app_ui/HomePage.dart';
import 'package:plant_app_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: primary,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
