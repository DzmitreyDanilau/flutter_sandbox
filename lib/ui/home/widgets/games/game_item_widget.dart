import 'package:flutter/material.dart';

class GameItemWidget extends StatelessWidget {
  const GameItemWidget(
      {Key? key, required this.imageUrl, required this.gameTitle})
      : super(key: key);

  final String imageUrl;
  final String gameTitle;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: 80,
      child: Card(
          child: Image.network(imageUrl)
      ),
    );
}
