part of 'post_bloc.dart';

@immutable
abstract class PostState {}

//uygulama açıldığındaki ilk event
class PostInitial extends PostState {}

//verileri çekerkenki event
class PostsLoading extends PostState {}

//veriler çekildikten sonraki event
class PostsDone extends PostState {}
