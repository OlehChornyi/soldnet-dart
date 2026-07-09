// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodySignIn {
  String get email;
  String get password;

  /// Create a copy of BodySignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodySignInCopyWith<BodySignIn> get copyWith =>
      _$BodySignInCopyWithImpl<BodySignIn>(this as BodySignIn, _$identity);

  /// Serializes this BodySignIn to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodySignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'BodySignIn(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $BodySignInCopyWith<$Res> {
  factory $BodySignInCopyWith(
          BodySignIn value, $Res Function(BodySignIn) _then) =
      _$BodySignInCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$BodySignInCopyWithImpl<$Res> implements $BodySignInCopyWith<$Res> {
  _$BodySignInCopyWithImpl(this._self, this._then);

  final BodySignIn _self;
  final $Res Function(BodySignIn) _then;

  /// Create a copy of BodySignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodySignIn].
extension BodySignInPatterns on BodySignIn {
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
    TResult Function(_BodySignIn value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodySignIn() when $default != null:
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
    TResult Function(_BodySignIn value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignIn():
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
    TResult? Function(_BodySignIn value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignIn() when $default != null:
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
    TResult Function(String email, String password)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodySignIn() when $default != null:
        return $default(_that.email, _that.password);
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
    TResult Function(String email, String password) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignIn():
        return $default(_that.email, _that.password);
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
    TResult? Function(String email, String password)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignIn() when $default != null:
        return $default(_that.email, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BodySignIn implements BodySignIn {
  const _BodySignIn({required this.email, required this.password});
  factory _BodySignIn.fromJson(Map<String, dynamic> json) =>
      _$BodySignInFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of BodySignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodySignInCopyWith<_BodySignIn> get copyWith =>
      __$BodySignInCopyWithImpl<_BodySignIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodySignInToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodySignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'BodySignIn(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$BodySignInCopyWith<$Res>
    implements $BodySignInCopyWith<$Res> {
  factory _$BodySignInCopyWith(
          _BodySignIn value, $Res Function(_BodySignIn) _then) =
      __$BodySignInCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$BodySignInCopyWithImpl<$Res> implements _$BodySignInCopyWith<$Res> {
  __$BodySignInCopyWithImpl(this._self, this._then);

  final _BodySignIn _self;
  final $Res Function(_BodySignIn) _then;

  /// Create a copy of BodySignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_BodySignIn(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ResponseSignIn {
  String? get message;
  String? get token;

  /// Create a copy of ResponseSignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseSignInCopyWith<ResponseSignIn> get copyWith =>
      _$ResponseSignInCopyWithImpl<ResponseSignIn>(
          this as ResponseSignIn, _$identity);

  /// Serializes this ResponseSignIn to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseSignIn &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, token);

  @override
  String toString() {
    return 'ResponseSignIn(message: $message, token: $token)';
  }
}

/// @nodoc
abstract mixin class $ResponseSignInCopyWith<$Res> {
  factory $ResponseSignInCopyWith(
          ResponseSignIn value, $Res Function(ResponseSignIn) _then) =
      _$ResponseSignInCopyWithImpl;
  @useResult
  $Res call({String? message, String? token});
}

/// @nodoc
class _$ResponseSignInCopyWithImpl<$Res>
    implements $ResponseSignInCopyWith<$Res> {
  _$ResponseSignInCopyWithImpl(this._self, this._then);

  final ResponseSignIn _self;
  final $Res Function(ResponseSignIn) _then;

  /// Create a copy of ResponseSignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseSignIn].
extension ResponseSignInPatterns on ResponseSignIn {
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
    TResult Function(_ResponseSignIn value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn() when $default != null:
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
    TResult Function(_ResponseSignIn value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn():
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
    TResult? Function(_ResponseSignIn value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn() when $default != null:
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
    TResult Function(String? message, String? token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn() when $default != null:
        return $default(_that.message, _that.token);
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
    TResult Function(String? message, String? token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn():
        return $default(_that.message, _that.token);
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
    TResult? Function(String? message, String? token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignIn() when $default != null:
        return $default(_that.message, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseSignIn implements ResponseSignIn {
  const _ResponseSignIn({required this.message, required this.token});
  factory _ResponseSignIn.fromJson(Map<String, dynamic> json) =>
      _$ResponseSignInFromJson(json);

  @override
  final String? message;
  @override
  final String? token;

  /// Create a copy of ResponseSignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseSignInCopyWith<_ResponseSignIn> get copyWith =>
      __$ResponseSignInCopyWithImpl<_ResponseSignIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseSignInToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseSignIn &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, token);

  @override
  String toString() {
    return 'ResponseSignIn(message: $message, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$ResponseSignInCopyWith<$Res>
    implements $ResponseSignInCopyWith<$Res> {
  factory _$ResponseSignInCopyWith(
          _ResponseSignIn value, $Res Function(_ResponseSignIn) _then) =
      __$ResponseSignInCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, String? token});
}

/// @nodoc
class __$ResponseSignInCopyWithImpl<$Res>
    implements _$ResponseSignInCopyWith<$Res> {
  __$ResponseSignInCopyWithImpl(this._self, this._then);

  final _ResponseSignIn _self;
  final $Res Function(_ResponseSignIn) _then;

  /// Create a copy of ResponseSignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_ResponseSignIn(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
