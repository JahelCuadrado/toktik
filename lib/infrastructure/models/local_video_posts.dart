

import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel{

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
    LocalVideoModel(
        name: json['name'] ?? 'no name', 
        videoUrl: json['videoUrl'] ?? 'no url', 
        likes: json['likes'],
        views: json['views']
        );

  
  VideoPost toVideoPostEntity() =>
        VideoPost(
            caption: name, 
            videoUrl: videoUrl,
            likes: likes,
            views: views
            );




}