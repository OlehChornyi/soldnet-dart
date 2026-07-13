// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_photo_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseUserPhotoPost {
  String? get message;

  /// Create a copy of ResponseUserPhotoPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseUserPhotoPostCopyWith<ResponseUserPhotoPost> get copyWith =>
      _$ResponseUserPhotoPostCopyWithImpl<ResponseUserPhotoPost>(
          this as ResponseUserPhotoPost, _$identity);

  /// Serializes this ResponseUserPhotoPost to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseUserPhotoPost &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseUserPhotoPost(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseUserPhotoPostCopyWith<$Res> {
  factory $ResponseUserPhotoPostCopyWith(ResponseUserPhotoPost value,
          $Res Function(ResponseUserPhotoPost) _then) =
      _$ResponseUserPhotoPostCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ResponseUserPhotoPostCopyWithImpl<$Res>
    implements $ResponseUserPhotoPostCopyWith<$Res> {
  _$ResponseUserPhotoPostCopyWithImpl(this._self, this._then);

  final ResponseUserPhotoPost _self;
  final $Res Function(ResponseUserPhotoPost) _then;

  /// Create a copy of ResponseUserPhotoPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseUserPhotoPost].
extension ResponseUserPhotoPostPatterns on ResponseUserPhotoPost {
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
    TResult Function(_ResponseUserPhotoPost value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost() when $default != null:
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
    TResult Function(_ResponseUserPhotoPost value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost():
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
    TResult? Function(_ResponseUserPhotoPost value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost() when $default != null:
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
    TResult Function(String? message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost() when $default != null:
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
    TResult Function(String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost():
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
    TResult? Function(String? message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserPhotoPost() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseUserPhotoPost implements ResponseUserPhotoPost {
  const _ResponseUserPhotoPost({required this.message});
  factory _ResponseUserPhotoPost.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserPhotoPostFromJson(json);

  @override
  final String? message;

  /// Create a copy of ResponseUserPhotoPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseUserPhotoPostCopyWith<_ResponseUserPhotoPost> get copyWith =>
      __$ResponseUserPhotoPostCopyWithImpl<_ResponseUserPhotoPost>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseUserPhotoPostToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUserPhotoPost &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseUserPhotoPost(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseUserPhotoPostCopyWith<$Res>
    implements $ResponseUserPhotoPostCopyWith<$Res> {
  factory _$ResponseUserPhotoPostCopyWith(_ResponseUserPhotoPost value,
          $Res Function(_ResponseUserPhotoPost) _then) =
      __$ResponseUserPhotoPostCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$ResponseUserPhotoPostCopyWithImpl<$Res>
    implements _$ResponseUserPhotoPostCopyWith<$Res> {
  __$ResponseUserPhotoPostCopyWithImpl(this._self, this._then);

  final _ResponseUserPhotoPost _self;
  final $Res Function(_ResponseUserPhotoPost) _then;

  /// Create a copy of ResponseUserPhotoPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ResponseUserPhotoPost(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
