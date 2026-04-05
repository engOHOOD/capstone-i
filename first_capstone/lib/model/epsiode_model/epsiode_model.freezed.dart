// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epsiode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeModel {

 int get id; int get podcastId; String get title; String get description; String get coverImage; String get audioUrl; DateTime get publishDate; int get plays; int get likes;
/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeModelCopyWith<EpisodeModel> get copyWith => _$EpisodeModelCopyWithImpl<EpisodeModel>(this as EpisodeModel, _$identity);

  /// Serializes this EpisodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.podcastId, podcastId) || other.podcastId == podcastId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.likes, likes) || other.likes == likes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,podcastId,title,description,coverImage,audioUrl,publishDate,plays,likes);

@override
String toString() {
  return 'EpisodeModel(id: $id, podcastId: $podcastId, title: $title, description: $description, coverImage: $coverImage, audioUrl: $audioUrl, publishDate: $publishDate, plays: $plays, likes: $likes)';
}


}

/// @nodoc
abstract mixin class $EpisodeModelCopyWith<$Res>  {
  factory $EpisodeModelCopyWith(EpisodeModel value, $Res Function(EpisodeModel) _then) = _$EpisodeModelCopyWithImpl;
@useResult
$Res call({
 int id, int podcastId, String title, String description, String coverImage, String audioUrl, DateTime publishDate, int plays, int likes
});




}
/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._self, this._then);

  final EpisodeModel _self;
  final $Res Function(EpisodeModel) _then;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? podcastId = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? audioUrl = null,Object? publishDate = null,Object? plays = null,Object? likes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,podcastId: null == podcastId ? _self.podcastId : podcastId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,audioUrl: null == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as DateTime,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EpisodeModel].
extension EpisodeModelPatterns on EpisodeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodeModel value)  $default,){
final _that = this;
switch (_that) {
case _EpisodeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodeModel() when $default != null:
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes)  $default,) {final _that = this;
switch (_that) {
case _EpisodeModel():
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes)?  $default,) {final _that = this;
switch (_that) {
case _EpisodeModel() when $default != null:
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodeModel implements EpisodeModel {
  const _EpisodeModel({required this.id, required this.podcastId, required this.title, required this.description, required this.coverImage, required this.audioUrl, required this.publishDate, required this.plays, required this.likes});
  factory _EpisodeModel.fromJson(Map<String, dynamic> json) => _$EpisodeModelFromJson(json);

@override final  int id;
@override final  int podcastId;
@override final  String title;
@override final  String description;
@override final  String coverImage;
@override final  String audioUrl;
@override final  DateTime publishDate;
@override final  int plays;
@override final  int likes;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeModelCopyWith<_EpisodeModel> get copyWith => __$EpisodeModelCopyWithImpl<_EpisodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.podcastId, podcastId) || other.podcastId == podcastId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.likes, likes) || other.likes == likes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,podcastId,title,description,coverImage,audioUrl,publishDate,plays,likes);

@override
String toString() {
  return 'EpisodeModel(id: $id, podcastId: $podcastId, title: $title, description: $description, coverImage: $coverImage, audioUrl: $audioUrl, publishDate: $publishDate, plays: $plays, likes: $likes)';
}


}

/// @nodoc
abstract mixin class _$EpisodeModelCopyWith<$Res> implements $EpisodeModelCopyWith<$Res> {
  factory _$EpisodeModelCopyWith(_EpisodeModel value, $Res Function(_EpisodeModel) _then) = __$EpisodeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int podcastId, String title, String description, String coverImage, String audioUrl, DateTime publishDate, int plays, int likes
});




}
/// @nodoc
class __$EpisodeModelCopyWithImpl<$Res>
    implements _$EpisodeModelCopyWith<$Res> {
  __$EpisodeModelCopyWithImpl(this._self, this._then);

  final _EpisodeModel _self;
  final $Res Function(_EpisodeModel) _then;

/// Create a copy of EpisodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? podcastId = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? audioUrl = null,Object? publishDate = null,Object? plays = null,Object? likes = null,}) {
  return _then(_EpisodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,podcastId: null == podcastId ? _self.podcastId : podcastId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,audioUrl: null == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as DateTime,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
