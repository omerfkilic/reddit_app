import 'package:flutter/material.dart';

String listTileTitle(String title, {int maxLength = 40}) =>
    (title.length <= maxLength) ? title : '${title.substring(0, maxLength)}...';

Widget listTileLeading() => Image.network(
      'https://logodownload.org/wp-content/uploads/2018/02/reddit-logo-16.png',
      height: 25,
      width: 25,
    );

Column listTileSubtitle(Map<String, dynamic> post) => Column(
      children: [
        (post['selftext'].length <= 200)
            ? Text(post['selftext'])
            : Text('${post['selftext'].toString().substring(0, 200)}...'),
        (post['thumbnail'].toString().startsWith('http'))
            ? Image.network(post['thumbnail'])
            : Container()
      ],
    );
