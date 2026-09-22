import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/Widgets/Article_Bulder.dart';
import 'package:news_app/core/Widgets/custom_text_field.dart';
import 'package:news_app/core/manger/news_cubit.dart';
import 'package:news_app/core/manger/news_state.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Search must not be empty';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    NewsCubit.get(context).getSearch(value);
                  },
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              Expanded(
                child: ArticleBulder(
                  list: list,
                  context: context,
                  isSearch: true,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
