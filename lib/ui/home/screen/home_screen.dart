import 'package:flutter/material.dart';
import 'package:flutter_sandbox/ui/home/screen/home_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_list_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetAllGamesBloc>(
        create: (BuildContext context) => GetAllGamesBloc(),
        child: const Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          body: Align(
            alignment: Alignment.topCenter,
            child: HomeLayout(),
          ),
        ));
  }
}
