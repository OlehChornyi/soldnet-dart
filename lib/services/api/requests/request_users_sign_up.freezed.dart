// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_users_sign_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodySignUp {
  String get email;
  String get password;

  /// Create a copy of BodySignUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodySignUpCopyWith<BodySignUp> get copyWith =>
      _$BodySignUpCopyWithImpl<BodySignUp>(this as BodySignUp, _$identity);

  /// Serializes this BodySignUp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodySignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'BodySignUp(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $BodySignUpCopyWith<$Res> {
  factory $BodySignUpCopyWith(
          BodySignUp value, $Res Function(BodySignUp) _then) =
      _$BodySignUpCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$BodySignUpCopyWithImpl<$Res> implements $BodySignUpCopyWith<$Res> {
  _$BodySignUpCopyWithImpl(this._self, this._then);

  final BodySignUp _self;
  final $Res Function(BodySignUp) _then;

  /// Create a copy of BodySignUp
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

/// Adds pattern-matching-related methods to [BodySignUp].
extension BodySignUpPatterns on BodySignUp {
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
    TResult Function(_BodySignUp value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodySignUp() when $default != null:
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
    TResult Function(_BodySignUp value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignUp():
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
    TResult? Function(_BodySignUp value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySignUp() when $default != null:
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
      case _BodySignUp() when $default != null:
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
      case _BodySignUp():
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
      case _BodySignUp() when $default != null:
        return $default(_that.email, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BodySignUp implements BodySignUp {
  const _BodySignUp({required this.email, required this.password});
  factory _BodySignUp.fromJson(Map<String, dynamic> json) =>
      _$BodySignUpFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of BodySignUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodySignUpCopyWith<_BodySignUp> get copyWith =>
      __$BodySignUpCopyWithImpl<_BodySignUp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodySignUpToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodySignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'BodySignUp(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$BodySignUpCopyWith<$Res>
    implements $BodySignUpCopyWith<$Res> {
  factory _$BodySignUpCopyWith(
          _BodySignUp value, $Res Function(_BodySignUp) _then) =
      __$BodySignUpCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$BodySignUpCopyWithImpl<$Res> implements _$BodySignUpCopyWith<$Res> {
  __$BodySignUpCopyWithImpl(this._self, this._then);

  final _BodySignUp _self;
  final $Res Function(_BodySignUp) _then;

  /// Create a copy of BodySignUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_BodySignUp(
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
mixin _$ResponseSignUp {
  String get message;

  /// Create a copy of ResponseSignUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseSignUpCopyWith<ResponseSignUp> get copyWith =>
      _$ResponseSignUpCopyWithImpl<ResponseSignUp>(
          this as ResponseSignUp, _$identity);

  /// Serializes this ResponseSignUp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseSignUp &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseSignUp(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseSignUpCopyWith<$Res> {
  factory $ResponseSignUpCopyWith(
          ResponseSignUp value, $Res Function(ResponseSignUp) _then) =
      _$ResponseSignUpCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ResponseSignUpCopyWithImpl<$Res>
    implements $ResponseSignUpCopyWith<$Res> {
  _$ResponseSignUpCopyWithImpl(this._self, this._then);

  final ResponseSignUp _self;
  final $Res Function(ResponseSignUp) _then;

  /// Create a copy of ResponseSignUp
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

/// Adds pattern-matching-related methods to [ResponseSignUp].
extension ResponseSignUpPatterns on ResponseSignUp {
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
    TResult Function(_ResponseSignUp value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseSignUp() when $default != null:
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
    TResult Function(_ResponseSignUp value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignUp():
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
    TResult? Function(_ResponseSignUp value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseSignUp() when $default != null:
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
      case _ResponseSignUp() when $default != null:
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
      case _ResponseSignUp():
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
      case _ResponseSignUp() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseSignUp implements ResponseSignUp {
  const _ResponseSignUp({required this.message});
  factory _ResponseSignUp.fromJson(Map<String, dynamic> json) =>
      _$ResponseSignUpFromJson(json);

  @override
  final String message;

  /// Create a copy of ResponseSignUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseSignUpCopyWith<_ResponseSignUp> get copyWith =>
      __$ResponseSignUpCopyWithImpl<_ResponseSignUp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseSignUpToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseSignUp &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResponseSignUp(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseSignUpCopyWith<$Res>
    implements $ResponseSignUpCopyWith<$Res> {
  factory _$ResponseSignUpCopyWith(
          _ResponseSignUp value, $Res Function(_ResponseSignUp) _then) =
      __$ResponseSignUpCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ResponseSignUpCopyWithImpl<$Res>
    implements _$ResponseSignUpCopyWith<$Res> {
  __$ResponseSignUpCopyWithImpl(this._self, this._then);

  final _ResponseSignUp _self;
  final $Res Function(_ResponseSignUp) _then;

  /// Create a copy of ResponseSignUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ResponseSignUp(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
