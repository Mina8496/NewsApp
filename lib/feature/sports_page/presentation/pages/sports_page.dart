import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/Business_page/presentation/widgets/Build_Article_Item.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_cubit.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_state.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        List sports = NewsCubit.get(context).sports;
        return ConditionalBuilder(
          condition: state is! NewsGetSportsLoadingState,
          builder: (context) => ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                BuildArticleItem(articles: sports[index]),
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: sports.length,
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
