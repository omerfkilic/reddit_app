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

  String kind;
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
    required this.after,
    required this.dist,
    required this.modhash,
    required this.geoFilter,
    required this.children,
    required this.before,
  });

  dynamic after;
  int dist;
  String modhash;
  String geoFilter;
  List<Child> children;
  String before;

  factory PostModelData.fromJson(Map<String, dynamic> json) => PostModelData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children:
            List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        before: json["before"],
      );

  Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
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
    required this.subreddit,
    required this.selftext,
    required this.authorFullname,
    required this.title,
    required this.subredditNamePrefixed,
    required this.thumbnailHeight,
    required this.name,
    required this.thumbnailWidth,
    required this.thumbnail,
    required this.created,
    required this.wls,
    required this.author,
    required this.permalink,
    required this.url,
  });

  String subreddit;
  String selftext;
  String authorFullname;
  String title;
  String subredditNamePrefixed;
  int thumbnailHeight;
  String name;
  int thumbnailWidth;
  String thumbnail;
  int created;
  int wls;
  String author;
  String permalink;
  String url;

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        subreddit: json["subreddit"],
        selftext: json["!!selftext"],
        authorFullname: json["author_fullname"],
        title: json["!!title"],
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        thumbnailHeight: json["thumbnail_height"],
        name: json["name"],
        thumbnailWidth: json["thumbnail_width"],
        thumbnail: json["thumbnail"],
        created: json["created"],
        wls: json["wls"],
        author: json["author"],
        permalink: json["permalink"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "subreddit": subreddit,
        "!!selftext": selftext,
        "author_fullname": authorFullname,
        "!!title": title,
        "subreddit_name_prefixed": subredditNamePrefixed,
        "thumbnail_height": thumbnailHeight,
        "name": name,
        "thumbnail_width": thumbnailWidth,
        "thumbnail": thumbnail,
        "created": created,
        "wls": wls,
        "author": author,
        "permalink": permalink,
        "url": url,
      };
}
