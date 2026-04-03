// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epsiode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpsiodeModel _$EpsiodeModelFromJson(Map<String, dynamic> json) =>
    _EpsiodeModel(
      id: (json['id'] as num).toInt(),
      podcastId: (json['podcastId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      coverImage: json['coverImage'] as String,
      audioUrl: json['audioUrl'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      plays: (json['plays'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
      comments: (json['comments'] as num).toInt(),
    );

Map<String, dynamic> _$EpsiodeModelToJson(_EpsiodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'podcastId': instance.podcastId,
      'title': instance.title,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'audioUrl': instance.audioUrl,
      'publishDate': instance.publishDate.toIso8601String(),
      'plays': instance.plays,
      'likes': instance.likes,
      'comments': instance.comments,
    };
