import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/Widgets/Article_Bulder.dart';
import 'package:news_app/core/manger/news_cubit.dart';
import 'package:news_app/core/manger/news_state.dart';

class Sciencepage extends StatelessWidget {
  const Sciencepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        List list = NewsCubit.get(context).science;
        return ArticleBulder(list: list, context: context);
      },
    );
  }
}
