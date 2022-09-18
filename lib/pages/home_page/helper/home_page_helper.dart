import 'package:flutter/material.dart';

//Eğer title 40 harften uzunsa kısaltıyor
String listTileTitle(String title, {int maxLength = 40}) =>
    (title.length <= maxLength) ? title : '${title.substring(0, maxLength)}...';
//Redditin logosunu döndürüyor
Widget listTileLeading() => Image.network(
      'https://logodownload.org/wp-content/uploads/2018/02/reddit-logo-16.png',
      height: 25,
      width: 25,
    );
//Postların gösterildiği ListTile'ın subtitle'ı
Column listTileSubtitle(Map<String, dynamic> post) => Column(
      children: [
//Eğer description 200 harften uzunsa kısaltıyor
        (post['selftext'].length <= 200)
            ? Text(post['selftext'])
            : Text('${post['selftext'].toString().substring(0, 200)}...'),
        //thumbnail eğer http ile başlıyorsa thumbnaile sahiptir demek oluyor
        (post['thumbnail'].toString().startsWith('http'))
            ? Image.network(post['thumbnail'])
            : Container()
      ],
    );
