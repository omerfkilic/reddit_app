import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:reddit_app/core/models/post_model.dart';
import 'package:reddit_app/core/services/reddit_api.dart' as reddit_api;

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostModel? postModel;
  List<Map<String, dynamic>> allPosts = [];
  PostBloc() : super(PostStateInitial()) {
    on<PostEvent>((event, emit) {
      print('PostEvent');
    });
    on<GetAllPostsEvent>((event, emit) async {
      print('GetAllPostsEvent');
      emit(PostStateLoading());
      var response = await reddit_api.getAllPostsFromApi();
      if (response == null) {
        emit(PostStateError());
      } else {
        postModel = postModelFromJson(response.body);

        List<Child> tempList = postModel!.data.children;
        allPosts = [];
        for (var element in tempList) {
          allPosts.add(element.data.toJson());
        }
        emit(PostStateDone());
      }
    });
  }
}
