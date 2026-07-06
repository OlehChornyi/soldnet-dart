// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreUserModel {
  User? get user;
  String get token;
  String get serverMessage;
  bool get isServerMessageShown;

  /// Create a copy of StoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreUserModelCopyWith<StoreUserModel> get copyWith =>
      _$StoreUserModelCopyWithImpl<StoreUserModel>(
          this as StoreUserModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreUserModel &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.serverMessage, serverMessage) ||
                other.serverMessage == serverMessage) &&
            (identical(other.isServerMessageShown, isServerMessageShown) ||
                other.isServerMessageShown == isServerMessageShown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      token,
      serverMessage,
      isServerMessageShown);

  @override
  String toString() {
    return 'StoreUserModel(user: $user, token: $token, serverMessage: $serverMessage, isServerMessageShown: $isServerMessageShown)';
  }
}

/// @nodoc
abstract mixin class $StoreUserModelCopyWith<$Res> {
  factory $StoreUserModelCopyWith(
          StoreUserModel value, $Res Function(StoreUserModel) _then) =
      _$StoreUserModelCopyWithImpl;
  @useResult
  $Res call(
      {User? user,
      String token,
      String serverMessage,
      bool isServerMessageShown});
}

/// @nodoc
class _$StoreUserModelCopyWithImpl<$Res>
    implements $StoreUserModelCopyWith<$Res> {
  _$StoreUserModelCopyWithImpl(this._self, this._then);

  final StoreUserModel _self;
  final $Res Function(StoreUserModel) _then;

  /// Create a copy of StoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
    Object? serverMessage = null,
    Object? isServerMessageShown = null,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      serverMessage: null == serverMessage
          ? _self.serverMessage
          : serverMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isServerMessageShown: null == isServerMessageShown
          ? _self.isServerMessageShown
          : isServerMessageShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [StoreUserModel].
extension StoreUserModelPatterns on StoreUserModel {
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
    TResult Function(_StoreUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel() when $default != null:
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
    TResult Function(_StoreUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel():
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
    TResult? Function(_StoreUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel() when $default != null:
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
    TResult Function(User? user, String token, String serverMessage,
            bool isServerMessageShown)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel() when $default != null:
        return $default(_that.user, _that.token, _that.serverMessage,
            _that.isServerMessageShown);
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
    TResult Function(User? user, String token, String serverMessage,
            bool isServerMessageShown)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel():
        return $default(_that.user, _that.token, _that.serverMessage,
            _that.isServerMessageShown);
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
    TResult? Function(User? user, String token, String serverMessage,
            bool isServerMessageShown)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreUserModel() when $default != null:
        return $default(_that.user, _that.token, _that.serverMessage,
            _that.isServerMessageShown);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StoreUserModel implements StoreUserModel {
  const _StoreUserModel(
      {required this.user,
      required this.token,
      required this.serverMessage,
      required this.isServerMessageShown});

  @override
  final User? user;
  @override
  final String token;
  @override
  final String serverMessage;
  @override
  final bool isServerMessageShown;

  /// Create a copy of StoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreUserModelCopyWith<_StoreUserModel> get copyWith =>
      __$StoreUserModelCopyWithImpl<_StoreUserModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreUserModel &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.serverMessage, serverMessage) ||
                other.serverMessage == serverMessage) &&
            (identical(other.isServerMessageShown, isServerMessageShown) ||
                other.isServerMessageShown == isServerMessageShown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      token,
      serverMessage,
      isServerMessageShown);

  @override
  String toString() {
    return 'StoreUserModel(user: $user, token: $token, serverMessage: $serverMessage, isServerMessageShown: $isServerMessageShown)';
  }
}

/// @nodoc
abstract mixin class _$StoreUserModelCopyWith<$Res>
    implements $StoreUserModelCopyWith<$Res> {
  factory _$StoreUserModelCopyWith(
          _StoreUserModel value, $Res Function(_StoreUserModel) _then) =
      __$StoreUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User? user,
      String token,
      String serverMessage,
      bool isServerMessageShown});
}

/// @nodoc
class __$StoreUserModelCopyWithImpl<$Res>
    implements _$StoreUserModelCopyWith<$Res> {
  __$StoreUserModelCopyWithImpl(this._self, this._then);

  final _StoreUserModel _self;
  final $Res Function(_StoreUserModel) _then;

  /// Create a copy of StoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? token = null,
    Object? serverMessage = null,
    Object? isServerMessageShown = null,
  }) {
    return _then(_StoreUserModel(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      serverMessage: null == serverMessage
          ? _self.serverMessage
          : serverMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isServerMessageShown: null == isServerMessageShown
          ? _self.isServerMessageShown
          : isServerMessageShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
