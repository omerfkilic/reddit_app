part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostStateInitial extends PostState {}

class PostStateLoading extends PostState {}

class PostStateDone extends PostState {}

class PostStateError extends PostState {}
