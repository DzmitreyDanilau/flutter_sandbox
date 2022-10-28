import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_block.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_list_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_status.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/genre_item_widget.dart';

class GenresListWidget extends StatelessWidget {
  const GenresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresBloc, GenresListState>(
        buildWhen: (previous, current) => current.status.isSuccess,
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: _genresList(state, context),
          );
        });
  }

  ListView _genresList(GenresListState state, BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shrinkWrap: true,
        itemCount: state.genres.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16.0),
        itemBuilder: (context, index) => _getGenreItem(context, state, index));
  }

  GenreItemWidget _getGenreItem(
      BuildContext context, GenresListState state, int index) {
    return GenreItemWidget(
        key: ValueKey(state.genres[index].id),
        genre: state.genres[index],
        clickListener: (GenreClicked) => {

        });
  }
}
