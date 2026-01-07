// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fashion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FashionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FashionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FashionEvent()';
}


}

/// @nodoc
class $FashionEventCopyWith<$Res>  {
$FashionEventCopyWith(FashionEvent _, $Res Function(FashionEvent) __);
}


/// Adds pattern-matching-related methods to [FashionEvent].
extension FashionEventPatterns on FashionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchFashionDeatisl value)?  fetchFashionDeatisl,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchFashionDeatisl() when fetchFashionDeatisl != null:
return fetchFashionDeatisl(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchFashionDeatisl value)  fetchFashionDeatisl,}){
final _that = this;
switch (_that) {
case FetchFashionDeatisl():
return fetchFashionDeatisl(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchFashionDeatisl value)?  fetchFashionDeatisl,}){
final _that = this;
switch (_that) {
case FetchFashionDeatisl() when fetchFashionDeatisl != null:
return fetchFashionDeatisl(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchFashionDeatisl,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchFashionDeatisl() when fetchFashionDeatisl != null:
return fetchFashionDeatisl();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchFashionDeatisl,}) {final _that = this;
switch (_that) {
case FetchFashionDeatisl():
return fetchFashionDeatisl();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchFashionDeatisl,}) {final _that = this;
switch (_that) {
case FetchFashionDeatisl() when fetchFashionDeatisl != null:
return fetchFashionDeatisl();case _:
  return null;

}
}

}

/// @nodoc


class FetchFashionDeatisl implements FashionEvent {
  const FetchFashionDeatisl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFashionDeatisl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FashionEvent.fetchFashionDeatisl()';
}


}




/// @nodoc
mixin _$FashionState {

 HomeEntity? get homeData; bool get isLoading; String get msg;
/// Create a copy of FashionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FashionStateCopyWith<FashionState> get copyWith => _$FashionStateCopyWithImpl<FashionState>(this as FashionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FashionState&&(identical(other.homeData, homeData) || other.homeData == homeData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,homeData,isLoading,msg);

@override
String toString() {
  return 'FashionState(homeData: $homeData, isLoading: $isLoading, msg: $msg)';
}


}

/// @nodoc
abstract mixin class $FashionStateCopyWith<$Res>  {
  factory $FashionStateCopyWith(FashionState value, $Res Function(FashionState) _then) = _$FashionStateCopyWithImpl;
@useResult
$Res call({
 HomeEntity? homeData, bool isLoading, String msg
});




}
/// @nodoc
class _$FashionStateCopyWithImpl<$Res>
    implements $FashionStateCopyWith<$Res> {
  _$FashionStateCopyWithImpl(this._self, this._then);

  final FashionState _self;
  final $Res Function(FashionState) _then;

/// Create a copy of FashionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homeData = freezed,Object? isLoading = null,Object? msg = null,}) {
  return _then(_self.copyWith(
homeData: freezed == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FashionState].
extension FashionStatePatterns on FashionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FashionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FashionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FashionState value)  $default,){
final _that = this;
switch (_that) {
case _FashionState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FashionState value)?  $default,){
final _that = this;
switch (_that) {
case _FashionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeEntity? homeData,  bool isLoading,  String msg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FashionState() when $default != null:
return $default(_that.homeData,_that.isLoading,_that.msg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeEntity? homeData,  bool isLoading,  String msg)  $default,) {final _that = this;
switch (_that) {
case _FashionState():
return $default(_that.homeData,_that.isLoading,_that.msg);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeEntity? homeData,  bool isLoading,  String msg)?  $default,) {final _that = this;
switch (_that) {
case _FashionState() when $default != null:
return $default(_that.homeData,_that.isLoading,_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class _FashionState implements FashionState {
  const _FashionState({this.homeData = null, this.isLoading = false, this.msg = ''});
  

@override@JsonKey() final  HomeEntity? homeData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String msg;

/// Create a copy of FashionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FashionStateCopyWith<_FashionState> get copyWith => __$FashionStateCopyWithImpl<_FashionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FashionState&&(identical(other.homeData, homeData) || other.homeData == homeData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,homeData,isLoading,msg);

@override
String toString() {
  return 'FashionState(homeData: $homeData, isLoading: $isLoading, msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$FashionStateCopyWith<$Res> implements $FashionStateCopyWith<$Res> {
  factory _$FashionStateCopyWith(_FashionState value, $Res Function(_FashionState) _then) = __$FashionStateCopyWithImpl;
@override @useResult
$Res call({
 HomeEntity? homeData, bool isLoading, String msg
});




}
/// @nodoc
class __$FashionStateCopyWithImpl<$Res>
    implements _$FashionStateCopyWith<$Res> {
  __$FashionStateCopyWithImpl(this._self, this._then);

  final _FashionState _self;
  final $Res Function(_FashionState) _then;

/// Create a copy of FashionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homeData = freezed,Object? isLoading = null,Object? msg = null,}) {
  return _then(_FashionState(
homeData: freezed == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
