// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podacast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PodacastModel _$PodacastModelFromJson(Map<String, dynamic> json) =>
    _PodacastModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      coverImage: json['coverImage'] as String,
      followersCount: (json['followersCount'] as num).toInt(),
      rating: json['rating'] as num,
      epsiodes: (json['epsiodes'] as List<dynamic>)
          .map((e) => EpsiodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PodacastModelToJson(_PodacastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'followersCount': instance.followersCount,
      'rating': instance.rating,
      'epsiodes': instance.epsiodes,
    };
