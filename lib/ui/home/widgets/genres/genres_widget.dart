import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_block.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/genres_list_widget.dart';

import 'bloc/genres_event.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenresBloc>(
      create: (BuildContext context) => GenresBloc()..add(GetCategories()),
      child: const GenresListWidget(),
    );
  }
}
