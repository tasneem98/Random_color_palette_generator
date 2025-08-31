// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneratedPalette {

@JsonKey(name: 'result') List<List<int>>? get result;
/// Create a copy of GeneratedPalette
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedPaletteCopyWith<GeneratedPalette> get copyWith => _$GeneratedPaletteCopyWithImpl<GeneratedPalette>(this as GeneratedPalette, _$identity);

  /// Serializes this GeneratedPalette to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedPalette&&const DeepCollectionEquality().equals(other.result, result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'GeneratedPalette(result: $result)';
}


}

/// @nodoc
abstract mixin class $GeneratedPaletteCopyWith<$Res>  {
  factory $GeneratedPaletteCopyWith(GeneratedPalette value, $Res Function(GeneratedPalette) _then) = _$GeneratedPaletteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'result') List<List<int>>? result
});




}
/// @nodoc
class _$GeneratedPaletteCopyWithImpl<$Res>
    implements $GeneratedPaletteCopyWith<$Res> {
  _$GeneratedPaletteCopyWithImpl(this._self, this._then);

  final GeneratedPalette _self;
  final $Res Function(GeneratedPalette) _then;

/// Create a copy of GeneratedPalette
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = freezed,}) {
  return _then(_self.copyWith(
result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<List<int>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneratedPalette].
extension GeneratedPalettePatterns on GeneratedPalette {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratedPalette value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratedPalette() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratedPalette value)  $default,){
final _that = this;
switch (_that) {
case _GeneratedPalette():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratedPalette value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratedPalette() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'result')  List<List<int>>? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedPalette() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'result')  List<List<int>>? result)  $default,) {final _that = this;
switch (_that) {
case _GeneratedPalette():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'result')  List<List<int>>? result)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedPalette() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneratedPalette implements GeneratedPalette {
  const _GeneratedPalette({@JsonKey(name: 'result') final  List<List<int>>? result}): _result = result;
  factory _GeneratedPalette.fromJson(Map<String, dynamic> json) => _$GeneratedPaletteFromJson(json);

 final  List<List<int>>? _result;
@override@JsonKey(name: 'result') List<List<int>>? get result {
  final value = _result;
  if (value == null) return null;
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GeneratedPalette
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratedPaletteCopyWith<_GeneratedPalette> get copyWith => __$GeneratedPaletteCopyWithImpl<_GeneratedPalette>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratedPaletteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedPalette&&const DeepCollectionEquality().equals(other._result, _result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'GeneratedPalette(result: $result)';
}


}

/// @nodoc
abstract mixin class _$GeneratedPaletteCopyWith<$Res> implements $GeneratedPaletteCopyWith<$Res> {
  factory _$GeneratedPaletteCopyWith(_GeneratedPalette value, $Res Function(_GeneratedPalette) _then) = __$GeneratedPaletteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'result') List<List<int>>? result
});




}
/// @nodoc
class __$GeneratedPaletteCopyWithImpl<$Res>
    implements _$GeneratedPaletteCopyWith<$Res> {
  __$GeneratedPaletteCopyWithImpl(this._self, this._then);

  final _GeneratedPalette _self;
  final $Res Function(_GeneratedPalette) _then;

/// Create a copy of GeneratedPalette
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = freezed,}) {
  return _then(_GeneratedPalette(
result: freezed == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<List<int>>?,
  ));
}


}

// dart format on
