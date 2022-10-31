import 'package:flutter/cupertino.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/all_games.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/genres_widget.dart';
import 'package:flutter_sandbox/ui/home/widgets/header_title.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HeaderTitle(),
          SizedBox(height: 80.0),
          GenresWidget(),
          SizedBox(height: 80.0),
          AllGameWidget(
            title: 'Title',
            gamesList: ['asdasd', 'easdsad', 'dsdasd'],
          )
        ],
      ),
    );
  }
}
