// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_account_get.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseUserAccountGet {
  String? get message;
  User? get user;

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseUserAccountGetCopyWith<ResponseUserAccountGet> get copyWith =>
      _$ResponseUserAccountGetCopyWithImpl<ResponseUserAccountGet>(
          this as ResponseUserAccountGet, _$identity);

  /// Serializes this ResponseUserAccountGet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseUserAccountGet &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  @override
  String toString() {
    return 'ResponseUserAccountGet(message: $message, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ResponseUserAccountGetCopyWith<$Res> {
  factory $ResponseUserAccountGetCopyWith(ResponseUserAccountGet value,
          $Res Function(ResponseUserAccountGet) _then) =
      _$ResponseUserAccountGetCopyWithImpl;
  @useResult
  $Res call({String? message, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ResponseUserAccountGetCopyWithImpl<$Res>
    implements $ResponseUserAccountGetCopyWith<$Res> {
  _$ResponseUserAccountGetCopyWithImpl(this._self, this._then);

  final ResponseUserAccountGet _self;
  final $Res Function(ResponseUserAccountGet) _then;

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ResponseUserAccountGet].
extension ResponseUserAccountGetPatterns on ResponseUserAccountGet {
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
    TResult Function(_ResponseUserAccountGet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet() when $default != null:
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
    TResult Function(_ResponseUserAccountGet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet():
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
    TResult? Function(_ResponseUserAccountGet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet() when $default != null:
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
    TResult Function(String? message, User? user)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet() when $default != null:
        return $default(_that.message, _that.user);
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
    TResult Function(String? message, User? user) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet():
        return $default(_that.message, _that.user);
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
    TResult? Function(String? message, User? user)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserAccountGet() when $default != null:
        return $default(_that.message, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseUserAccountGet implements ResponseUserAccountGet {
  const _ResponseUserAccountGet({required this.message, required this.user});
  factory _ResponseUserAccountGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserAccountGetFromJson(json);

  @override
  final String? message;
  @override
  final User? user;

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseUserAccountGetCopyWith<_ResponseUserAccountGet> get copyWith =>
      __$ResponseUserAccountGetCopyWithImpl<_ResponseUserAccountGet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseUserAccountGetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUserAccountGet &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  @override
  String toString() {
    return 'ResponseUserAccountGet(message: $message, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$ResponseUserAccountGetCopyWith<$Res>
    implements $ResponseUserAccountGetCopyWith<$Res> {
  factory _$ResponseUserAccountGetCopyWith(_ResponseUserAccountGet value,
          $Res Function(_ResponseUserAccountGet) _then) =
      __$ResponseUserAccountGetCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ResponseUserAccountGetCopyWithImpl<$Res>
    implements _$ResponseUserAccountGetCopyWith<$Res> {
  __$ResponseUserAccountGetCopyWithImpl(this._self, this._then);

  final _ResponseUserAccountGet _self;
  final $Res Function(_ResponseUserAccountGet) _then;

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_ResponseUserAccountGet(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of ResponseUserAccountGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
