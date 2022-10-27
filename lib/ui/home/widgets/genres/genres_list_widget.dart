import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_block.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_list_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_status.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/genres_item.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresBloc, GenresListState>(
        buildWhen: (previous, current) => current.status.isSuccess,
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              shrinkWrap: true,
              itemCount: state.genres.length,
              separatorBuilder: (_, __) => const SizedBox(
                width: 16.0,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(
                    key: ValueKey(state.genres[index]),
                    genre: state.genres[index],
                    clickListener: (GenreClicked) => {});
              },
            ),
          );
        });
  }
}
