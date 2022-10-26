import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Welcome Dima',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            SizedBox(height: 8.0),
            Text(
              'Would would you like to play?',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
            ),
          ],
        ),
        const SizedBox(width: 18.0),
        const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
              'https://cdn2.myminifactory.com/assets/object-assets/5f435a90d22ba/images/720X720-viper-avatar.jpg'),
        )
      ],
    );
  }
}
