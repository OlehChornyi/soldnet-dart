// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_delete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseUserDelete {
  String get message;

  /// Create a copy of ResponseUserDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseUserDeleteCopyWith<ResponseUserDelete> get copyWith =>
      _$ResponseUserDeleteCopyWithImpl<ResponseUserDelete>(
          this as ResponseUserDelete, _$identity);

  /// Serializes this ResponseUserDelete to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseUserDelete &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseUserDelete(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseUserDeleteCopyWith<$Res> {
  factory $ResponseUserDeleteCopyWith(
          ResponseUserDelete value, $Res Function(ResponseUserDelete) _then) =
      _$ResponseUserDeleteCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ResponseUserDeleteCopyWithImpl<$Res>
    implements $ResponseUserDeleteCopyWith<$Res> {
  _$ResponseUserDeleteCopyWithImpl(this._self, this._then);

  final ResponseUserDelete _self;
  final $Res Function(ResponseUserDelete) _then;

  /// Create a copy of ResponseUserDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseUserDelete].
extension ResponseUserDeletePatterns on ResponseUserDelete {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResponseUserDelete value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResponseUserDelete value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResponseUserDelete value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete() when $default != null:
        return $default(_that.message);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete():
        return $default(_that.message);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserDelete() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseUserDelete implements ResponseUserDelete {
  const _ResponseUserDelete({required this.message});
  factory _ResponseUserDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserDeleteFromJson(json);

  @override
  final String message;

  /// Create a copy of ResponseUserDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseUserDeleteCopyWith<_ResponseUserDelete> get copyWith =>
      __$ResponseUserDeleteCopyWithImpl<_ResponseUserDelete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseUserDeleteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUserDelete &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseUserDelete(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseUserDeleteCopyWith<$Res>
    implements $ResponseUserDeleteCopyWith<$Res> {
  factory _$ResponseUserDeleteCopyWith(
          _ResponseUserDelete value, $Res Function(_ResponseUserDelete) _then) =
      __$ResponseUserDeleteCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ResponseUserDeleteCopyWithImpl<$Res>
    implements _$ResponseUserDeleteCopyWith<$Res> {
  __$ResponseUserDeleteCopyWithImpl(this._self, this._then);

  final _ResponseUserDelete _self;
  final $Res Function(_ResponseUserDelete) _then;

  /// Create a copy of ResponseUserDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ResponseUserDelete(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
