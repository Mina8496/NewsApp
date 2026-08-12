import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/Business_page/presentation/pages/BusinessPage.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_state.dart';
import 'package:news_app/feature/science_page/presentation/pages/sciencePage.dart';
import 'package:news_app/feature/settings_page/presentation/pages/settings_page.dart';
import 'package:news_app/feature/sports_page/presentation/pages/sports_page.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitialNewsState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  List<Widget> screens = [
    Businesspage(),
    SportsPage(),
    Sciencepage(),
    SettingsPage(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(NewsButtonNavBarState());
  }
}
