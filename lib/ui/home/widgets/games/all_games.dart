import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_all_games_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_list_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/game_item_widget.dart';

import '../../../../models/game.dart';

class AllGameWidget extends StatelessWidget {
  const AllGameWidget({Key? key, required this.title, required this.gamesList})
      : super(key: key);

  final List<String> gamesList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllGamesBloc, GetAllGamesState>(
      builder: (context, state) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text('All Games',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            ListView.separated(
              itemBuilder: (context, index) => const GameItemWidget(
                  imageUrl:'https://cdn2.myminifactory.com/assets/object-assets/5f435a90d22ba/images/720X720-viper-avatar.jpg',
                  gameTitle: 'Game Title',
                ),
              separatorBuilder: (_, __) => const SizedBox(width: 16.0),
              itemCount: gamesList.length,
            )
          ],
        );
      },
    );
  }
}
