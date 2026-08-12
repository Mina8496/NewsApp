import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/Home_page/presentation/manger/news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitialNewsState());

  static NewsState get(context) => BlocProvider.of(context);
}
