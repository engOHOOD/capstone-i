// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epsiode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpsiodeModel _$EpsiodeModelFromJson(Map<String, dynamic> json) =>
    _EpsiodeModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      coverImage: json['coverImage'] as String,
      followersCount: (json['followersCount'] as num).toInt(),
      rating: json['rating'] as num,
      episodesCount: (json['episodesCount'] as num).toInt(),
    );

Map<String, dynamic> _$EpsiodeModelToJson(_EpsiodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'followersCount': instance.followersCount,
      'rating': instance.rating,
      'episodesCount': instance.episodesCount,
    };
