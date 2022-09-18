// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:reddit_app/core/models/post_model.dart';
import 'package:reddit_app/core/services/reddit_api.dart' as reddit_api;

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostModel? postModel;
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetAllPostsEvent>((event, emit) async {
      print('GetAllPostsEvent');
      var response = await reddit_api.getAllPosts();
      postModel = postModelFromJson(response!.body);

      //emit(PostPostsDone());

      //TODO servisten verileri çağır
      //TODO verileri modela çevirip ekrana yazdır
    });
  }
}
