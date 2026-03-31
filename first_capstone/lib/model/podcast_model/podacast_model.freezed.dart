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
mixin _$PodacastModel {

 int get id; String get title; String get description; String get coverImage; int get followersCount; num get rating; List<EpsiodeModel> get epsiodes;
/// Create a copy of PodacastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PodacastModelCopyWith<PodacastModel> get copyWith => _$PodacastModelCopyWithImpl<PodacastModel>(this as PodacastModel, _$identity);

  /// Serializes this PodacastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PodacastModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.epsiodes, epsiodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,coverImage,followersCount,rating,const DeepCollectionEquality().hash(epsiodes));

@override
String toString() {
  return 'PodacastModel(id: $id, title: $title, description: $description, coverImage: $coverImage, followersCount: $followersCount, rating: $rating, epsiodes: $epsiodes)';
}


}

/// @nodoc
abstract mixin class $PodacastModelCopyWith<$Res>  {
  factory $PodacastModelCopyWith(PodacastModel value, $Res Function(PodacastModel) _then) = _$PodacastModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String coverImage, int followersCount, num rating, List<EpsiodeModel> epsiodes
});




}
/// @nodoc
class _$PodacastModelCopyWithImpl<$Res>
    implements $PodacastModelCopyWith<$Res> {
  _$PodacastModelCopyWithImpl(this._self, this._then);

  final PodacastModel _self;
  final $Res Function(PodacastModel) _then;

/// Create a copy of PodacastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? followersCount = null,Object? rating = null,Object? epsiodes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,epsiodes: null == epsiodes ? _self.epsiodes : epsiodes // ignore: cast_nullable_to_non_nullable
as List<EpsiodeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PodacastModel].
extension PodacastModelPatterns on PodacastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PodacastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PodacastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PodacastModel value)  $default,){
final _that = this;
switch (_that) {
case _PodacastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PodacastModel value)?  $default,){
final _that = this;
switch (_that) {
case _PodacastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating,  List<EpsiodeModel> epsiodes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PodacastModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating,_that.epsiodes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating,  List<EpsiodeModel> epsiodes)  $default,) {final _that = this;
switch (_that) {
case _PodacastModel():
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating,_that.epsiodes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String coverImage,  int followersCount,  num rating,  List<EpsiodeModel> epsiodes)?  $default,) {final _that = this;
switch (_that) {
case _PodacastModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.coverImage,_that.followersCount,_that.rating,_that.epsiodes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PodacastModel implements PodacastModel {
  const _PodacastModel({required this.id, required this.title, required this.description, required this.coverImage, required this.followersCount, required this.rating, required final  List<EpsiodeModel> epsiodes}): _epsiodes = epsiodes;
  factory _PodacastModel.fromJson(Map<String, dynamic> json) => _$PodacastModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String coverImage;
@override final  int followersCount;
@override final  num rating;
 final  List<EpsiodeModel> _epsiodes;
@override List<EpsiodeModel> get epsiodes {
  if (_epsiodes is EqualUnmodifiableListView) return _epsiodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_epsiodes);
}


/// Create a copy of PodacastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PodacastModelCopyWith<_PodacastModel> get copyWith => __$PodacastModelCopyWithImpl<_PodacastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PodacastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PodacastModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._epsiodes, _epsiodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,coverImage,followersCount,rating,const DeepCollectionEquality().hash(_epsiodes));

@override
String toString() {
  return 'PodacastModel(id: $id, title: $title, description: $description, coverImage: $coverImage, followersCount: $followersCount, rating: $rating, epsiodes: $epsiodes)';
}


}

/// @nodoc
abstract mixin class _$PodacastModelCopyWith<$Res> implements $PodacastModelCopyWith<$Res> {
  factory _$PodacastModelCopyWith(_PodacastModel value, $Res Function(_PodacastModel) _then) = __$PodacastModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String coverImage, int followersCount, num rating, List<EpsiodeModel> epsiodes
});




}
/// @nodoc
class __$PodacastModelCopyWithImpl<$Res>
    implements _$PodacastModelCopyWith<$Res> {
  __$PodacastModelCopyWithImpl(this._self, this._then);

  final _PodacastModel _self;
  final $Res Function(_PodacastModel) _then;

/// Create a copy of PodacastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? coverImage = null,Object? followersCount = null,Object? rating = null,Object? epsiodes = null,}) {
  return _then(_PodacastModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,epsiodes: null == epsiodes ? _self._epsiodes : epsiodes // ignore: cast_nullable_to_non_nullable
as List<EpsiodeModel>,
  ));
}


}

// dart format on
