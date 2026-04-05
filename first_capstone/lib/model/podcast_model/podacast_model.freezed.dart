// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podacast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PodcastModel {

 int get id; String get title; String get description; String get coverImage; int get followersCount; num get rating;
/// Create a copy of PodcastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PodcastModelCopyWith<PodcastModel> get copyWith => _$PodcastModelCopyWithImpl<PodcastModel>(this as PodcastModel, _$identity);

  /// Serializes this PodcastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PodcastModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,coverImage,followersCount,rating);

@override
String toString() {
  return 'PodcastModel(id: $id, title: $title, description: $description, coverImage: $coverImage, followersCount: $followersCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $PodcastModelCopyWith<$Res>  {
  factory $PodcastModelCopyWith(PodcastModel value, $Res Function(PodcastModel) _then) = _$PodcastModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String coverImage, int followersCount, num rating
});




}
/// @nodoc
class _$PodcastModelCopyWithImpl<$Res>
    implements $PodcastModelCopyWith<$Res> {
  _$PodcastModelCopyWithImpl(this._self, this._then);

  final PodcastModel _self;
  final $Res Function(PodcastModel) _then;

/// Create a copy of PodcastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? followersCount = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [PodcastModel].
extension PodcastModelPatterns on PodcastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PodcastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PodcastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PodcastModel value)  $default,){
final _that = this;
switch (_that) {
case _PodcastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PodcastModel value)?  $default,){
final _that = this;
switch (_that) {
case _PodcastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PodcastModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating)  $default,) {final _that = this;
switch (_that) {
case _PodcastModel():
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating)?  $default,) {final _that = this;
switch (_that) {
case _PodcastModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PodcastModel implements PodcastModel {
  const _PodcastModel({required this.id, required this.title, required this.description, required this.coverImage, required this.followersCount, required this.rating});
  factory _PodcastModel.fromJson(Map<String, dynamic> json) => _$PodcastModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String coverImage;
@override final  int followersCount;
@override final  num rating;

/// Create a copy of PodcastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PodcastModelCopyWith<_PodcastModel> get copyWith => __$PodcastModelCopyWithImpl<_PodcastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PodcastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PodcastModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,coverImage,followersCount,rating);

@override
String toString() {
  return 'PodcastModel(id: $id, title: $title, description: $description, coverImage: $coverImage, followersCount: $followersCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$PodcastModelCopyWith<$Res> implements $PodcastModelCopyWith<$Res> {
  factory _$PodcastModelCopyWith(_PodcastModel value, $Res Function(_PodcastModel) _then) = __$PodcastModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String coverImage, int followersCount, num rating
});




}
/// @nodoc
class __$PodcastModelCopyWithImpl<$Res>
    implements _$PodcastModelCopyWith<$Res> {
  __$PodcastModelCopyWithImpl(this._self, this._then);

  final _PodcastModel _self;
  final $Res Function(_PodcastModel) _then;

/// Create a copy of PodcastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? followersCount = null,Object? rating = null,}) {
  return _then(_PodcastModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
