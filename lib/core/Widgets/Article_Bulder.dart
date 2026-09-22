import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/Widgets/Build_Article_Item.dart';

class ArticleBulder extends StatelessWidget {
  const ArticleBulder({
    super.key,
    required this.list,
    required this.context,
    this.isSearch = false,
  });

  final bool isSearch;
  final List<dynamic> list;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: list.isNotEmpty,
      builder: (context) => ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            BuildArticleItem(articles: list[index], context: context),
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemCount: list.length,
      ),
      fallback: (context) =>
          isSearch ? Container() : Center(child: CircularProgressIndicator()),
    );
  }
}
