// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    required this.kind,
    required this.data,
  });

  String? kind;
  PostModelData data;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        kind: json["kind"],
        data: PostModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
      };
}

class PostModelData {
  PostModelData({
    required this.children,
    required this.before,
  });

  List<Child> children;
  String before;

  factory PostModelData.fromJson(Map<String, dynamic> json) => PostModelData(
        children:
            List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        before: json["before"],
      );

  Map<String, dynamic> toJson() => {
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
      };
}

class Child {
  Child({
    required this.kind,
    required this.data,
  });

  String kind;
  ChildData data;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: json["kind"],
        data: ChildData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
      };
}

class ChildData {
  ChildData({
    required this.selftext,
    required this.authorFullname,
    required this.title,
    required this.thumbnailHeight,
    required this.name,
    required this.thumbnailWidth,
    required this.thumbnail,
    required this.created,
    required this.author,
    required this.permalink,
    required this.url,
  });

  String? selftext;
  String authorFullname;
  String title;
  int? thumbnailHeight;
  String name;
  int? thumbnailWidth;
  String? thumbnail;
  double? created;
  String author;
  String permalink;
  String url;

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        selftext: json["selftext"] ?? '',
        authorFullname: json["author_fullname"],
        title: json["title"],
        thumbnailHeight: json["thumbnail_height"] ?? 0,
        name: json["name"],
        thumbnailWidth: json["thumbnail_width"] ?? 0,
        thumbnail: json["thumbnail"] ?? 0,
        created: json["created"] ?? 0.0,
        author: json["author"],
        permalink: json["permalink"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "selftext": selftext,
        "author_fullname": authorFullname,
        "title": title,
        "thumbnail_height": thumbnailHeight,
        "name": name,
        "thumbnail_width": thumbnailWidth,
        "thumbnail": thumbnail,
        "created": created,
        "author": author,
        "permalink": permalink,
        "url": url,
      };
}
