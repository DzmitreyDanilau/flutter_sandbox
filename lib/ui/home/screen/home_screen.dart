import 'package:flutter/material.dart';
import 'package:flutter_sandbox/ui/home/screen/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Align(
        alignment: Alignment.topCenter,
        child: HomeLayout(),
      ),
    );
  }
}
