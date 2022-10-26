import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/bloc/categories_list_state.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/bloc/category_block.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/bloc/category_status.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/categories_list_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoriesListState>(
      buildWhen: (previous, current) => current.status.isSuccess,
      builder: (context, state) {
        return const CategoriesListWidget();
      },
    );
  }
  }
