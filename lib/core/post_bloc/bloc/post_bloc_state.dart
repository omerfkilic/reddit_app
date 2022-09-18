part of 'post_bloc_bloc.dart';

@immutable
abstract class PostBlocState {}

//uygulama açıldığındaki ilk event
class PostBlocInitial extends PostBlocState {}

//verileri çekerkenki event
class PostBlocPostsLoading extends PostBlocState {}

//veriler çekildikten sonraki event
class PostBlocPostsDone extends PostBlocState {}
