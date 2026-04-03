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
mixin _$EpsiodeModel {

 int get id; int get podcastId; String get title; String get description; String get coverImage; String get audioUrl; DateTime get publishDate; int get plays; int get likes; int get comments;
/// Create a copy of EpsiodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpsiodeModelCopyWith<EpsiodeModel> get copyWith => _$EpsiodeModelCopyWithImpl<EpsiodeModel>(this as EpsiodeModel, _$identity);

  /// Serializes this EpsiodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpsiodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.podcastId, podcastId) || other.podcastId == podcastId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,podcastId,title,description,coverImage,audioUrl,publishDate,plays,likes,comments);

@override
String toString() {
  return 'EpsiodeModel(id: $id, podcastId: $podcastId, title: $title, description: $description, coverImage: $coverImage, audioUrl: $audioUrl, publishDate: $publishDate, plays: $plays, likes: $likes, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $EpsiodeModelCopyWith<$Res>  {
  factory $EpsiodeModelCopyWith(EpsiodeModel value, $Res Function(EpsiodeModel) _then) = _$EpsiodeModelCopyWithImpl;
@useResult
$Res call({
 int id, int podcastId, String title, String description, String coverImage, String audioUrl, DateTime publishDate, int plays, int likes, int comments
});




}
/// @nodoc
class _$EpsiodeModelCopyWithImpl<$Res>
    implements $EpsiodeModelCopyWith<$Res> {
  _$EpsiodeModelCopyWithImpl(this._self, this._then);

  final EpsiodeModel _self;
  final $Res Function(EpsiodeModel) _then;

/// Create a copy of EpsiodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? podcastId = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? audioUrl = null,Object? publishDate = null,Object? plays = null,Object? likes = null,Object? comments = null,}) {
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
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EpsiodeModel].
extension EpsiodeModelPatterns on EpsiodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpsiodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpsiodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpsiodeModel value)  $default,){
final _that = this;
switch (_that) {
case _EpsiodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpsiodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EpsiodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes,  int comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpsiodeModel() when $default != null:
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes,  int comments)  $default,) {final _that = this;
switch (_that) {
case _EpsiodeModel():
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int podcastId,  String title,  String description,  String coverImage,  String audioUrl,  DateTime publishDate,  int plays,  int likes,  int comments)?  $default,) {final _that = this;
switch (_that) {
case _EpsiodeModel() when $default != null:
return $default(_that.id,_that.podcastId,_that.title,_that.description,_that.coverImage,_that.audioUrl,_that.publishDate,_that.plays,_that.likes,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpsiodeModel implements EpsiodeModel {
  const _EpsiodeModel({required this.id, required this.podcastId, required this.title, required this.description, required this.coverImage, required this.audioUrl, required this.publishDate, required this.plays, required this.likes, required this.comments});
  factory _EpsiodeModel.fromJson(Map<String, dynamic> json) => _$EpsiodeModelFromJson(json);

@override final  int id;
@override final  int podcastId;
@override final  String title;
@override final  String description;
@override final  String coverImage;
@override final  String audioUrl;
@override final  DateTime publishDate;
@override final  int plays;
@override final  int likes;
@override final  int comments;

/// Create a copy of EpsiodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpsiodeModelCopyWith<_EpsiodeModel> get copyWith => __$EpsiodeModelCopyWithImpl<_EpsiodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpsiodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpsiodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.podcastId, podcastId) || other.podcastId == podcastId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.plays, plays) || other.plays == plays)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,podcastId,title,description,coverImage,audioUrl,publishDate,plays,likes,comments);

@override
String toString() {
  return 'EpsiodeModel(id: $id, podcastId: $podcastId, title: $title, description: $description, coverImage: $coverImage, audioUrl: $audioUrl, publishDate: $publishDate, plays: $plays, likes: $likes, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$EpsiodeModelCopyWith<$Res> implements $EpsiodeModelCopyWith<$Res> {
  factory _$EpsiodeModelCopyWith(_EpsiodeModel value, $Res Function(_EpsiodeModel) _then) = __$EpsiodeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int podcastId, String title, String description, String coverImage, String audioUrl, DateTime publishDate, int plays, int likes, int comments
});




}
/// @nodoc
class __$EpsiodeModelCopyWithImpl<$Res>
    implements _$EpsiodeModelCopyWith<$Res> {
  __$EpsiodeModelCopyWithImpl(this._self, this._then);

  final _EpsiodeModel _self;
  final $Res Function(_EpsiodeModel) _then;

/// Create a copy of EpsiodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? podcastId = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? audioUrl = null,Object? publishDate = null,Object? plays = null,Object? likes = null,Object? comments = null,}) {
  return _then(_EpsiodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,podcastId: null == podcastId ? _self.podcastId : podcastId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,audioUrl: null == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as DateTime,plays: null == plays ? _self.plays : plays // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
