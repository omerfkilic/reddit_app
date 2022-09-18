import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_app/core/post_bloc/post_bloc.dart';
import 'package:reddit_app/pages/home_page/helper/home_page_helper.dart'
    as home_page_helper;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        List<Map<String, dynamic>> allPosts = context.read<PostBloc>().allPosts;
        return Scaffold(
          appBar: AppBar(title: const Text('Reddit App')),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.get_app),
            onPressed: () {
              context.read<PostBloc>().add(GetAllPostsEvent());
            },
          ),
          body: (state is PostStateLoading)
              ? const Center(child: CircularProgressIndicator())
              : (state is PostStateError)
                  ? const Center(
                      child: Text('Bir hata oluştu lütfen tekrar deneyiniz'))
                  : Center(
                      child: ListView.builder(
                        itemCount: allPosts.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(home_page_helper
                                .listTileTitle(allPosts[index]['title'])),
                            leading: home_page_helper.listTileLeading(),
                            subtitle: home_page_helper
                                .listTileSubtitle(allPosts[index]),
                          );
                        },
                      ),
                    ),
        );
      },
    );
  }
}
