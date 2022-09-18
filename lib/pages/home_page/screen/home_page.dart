import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_app/core/models/post_model.dart';
import 'package:reddit_app/core/post_bloc/bloc/post_bloc.dart';
import 'package:reddit_app/core/services/reddit_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO yükleme ekranında CircularProgressIndicator olsun ve ekran flu olsun
    //TODO floating action buttondan verileri çekip refreshlicez
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.get_app),
            onPressed: () {
              context.read<PostBloc>().add(GetAllPostsEvent());
            },
          ),
          body: Center(
            child: Column(
              children: [],
            ),
          ),
        );
      },
    );
  }
}
