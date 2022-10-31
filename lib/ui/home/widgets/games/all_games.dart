import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_all_games_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_list_bloc.dart';

import '../../../../models/game.dart';

class AllGameWidget extends StatelessWidget {
   const AllGameWidget({Key? key, required this.title, required this.gamesList})
      : super(key: key);

  final List<Game> gamesList;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllGamesBloc, GetAllGamesState>(
      builder: (context, state) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(this.title,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            Container(),
            ListView.separated(
                itemBuilder: itemBuilder,
                separatorBuilder: separatorBuilder,
                itemCount: itemCount)
          ],
        );
      },
    );
  }
}
