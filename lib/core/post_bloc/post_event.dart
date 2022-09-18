part of 'post_bloc.dart';

@immutable
abstract class PostEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

//verileri çekiceğimiz event
class GetAllPostsEvent extends PostEvent {
  GetAllPostsEvent();
}
