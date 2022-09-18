part of 'post_bloc_bloc.dart';

@immutable
abstract class PostBlocEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

//verileri çekiceğimiz event
class GetAllPosts extends PostBlocEvent {
  GetAllPosts();
}
