// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  napasswordme: json['napasswordme'] as String,
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  followedPodcasts: (json['followedPodcasts'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  likes: (json['likes'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'napasswordme': instance.napasswordme,
      'name': instance.name,
      'age': instance.age,
      'followedPodcasts': instance.followedPodcasts,
      'likes': instance.likes,
    };
