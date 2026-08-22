abstract class NewsState {}

class NewsInitialNewsState extends NewsState {}

class NewsButtonNavBarState extends NewsState {}

class NewsGetBusinessLoadingState extends NewsState {}

class NewsGetBussinesSuccesState extends NewsState {}

class NewsGetBussinesErrorState extends NewsState {
  final String error;
  NewsGetBussinesErrorState(this.error);
}
