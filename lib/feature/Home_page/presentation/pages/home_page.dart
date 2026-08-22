import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_cubit.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          var cubit = NewsCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text("News App"),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              items: cubit.bottomItems,
              onTap: (value) => cubit.changeBottomNavBar(value),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
               
              },
              child: Icon(Icons.add),
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
