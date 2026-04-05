// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podacast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PodcastModel _$PodcastModelFromJson(Map<String, dynamic> json) =>
    _PodcastModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      coverImage: json['coverImage'] as String,
      followersCount: (json['followersCount'] as num).toInt(),
      rating: json['rating'] as num,
    );

Map<String, dynamic> _$PodcastModelToJson(_PodcastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'followersCount': instance.followersCount,
      'rating': instance.rating,
    };
