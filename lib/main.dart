import 'package:flutter/material.dart';
import 'package:flutter_sandbox/di/app_module.dart';
import 'package:flutter_sandbox/ui/home/screen/home_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterSandbox',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeScreen(),
    );
  }
}
