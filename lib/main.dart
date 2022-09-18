import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_app/core/post_bloc/post_bloc.dart';
import 'package:reddit_app/pages/home_page/screen/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => PostBloc())),
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
