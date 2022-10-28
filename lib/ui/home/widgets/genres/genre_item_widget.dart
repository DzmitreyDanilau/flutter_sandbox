import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/models/genre.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_block.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_list_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_status.dart';

typedef GenreClicked = Function(Genre genreSelected);

class GenreItemWidget extends StatelessWidget {
  const GenreItemWidget(
      {super.key, required this.genre, required this.clickListener});

  final Genre genre;
  final GenreClicked clickListener;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => clickListener(genre),
      child: BlocSelector<GenresBloc, GenresListState, bool>(
        selector: (state) => _isItemSelected(state),
        builder: (context, state) {
          return Column(
            children: [
              _genreItem(state),
              const SizedBox(height: 4.0),
              _genreTitle()
            ],
          );
        },
      ),
    );
  }

  bool _isItemSelected(GenresListState state) {
    return (state.status.isSelected && state.selectedItemId == genre.id)
        ? true
        : false;
  }

  AnimatedContainer _genreItem(bool isSelected) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutCirc,
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      alignment: Alignment.center,
      height: isSelected ? 70.0 : 60.0,
      width: isSelected ? 70.0 : 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.deepOrangeAccent : Colors.amberAccent,
      ),
      child: const Icon(
        Icons.gamepad_outlined,
      ),
    );
  }

  SizedBox _genreTitle() {
    return SizedBox(
      width: 60,
      child: Text(
        genre.name ?? '',
        style: const TextStyle(
            fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.black87),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
