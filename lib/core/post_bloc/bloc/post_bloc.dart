import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetAllPosts>((event, emit) async {
      //TODO servisten verileri çağır
      //TODO verileri modela çevirip ekrana yazdır
    });
  }
}
