// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_conversations_get.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseConversationsGet {
  String? get message;
  List<Conversation>? get conversations;

  /// Create a copy of ResponseConversationsGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseConversationsGetCopyWith<ResponseConversationsGet> get copyWith =>
      _$ResponseConversationsGetCopyWithImpl<ResponseConversationsGet>(
          this as ResponseConversationsGet, _$identity);

  /// Serializes this ResponseConversationsGet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseConversationsGet &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.conversations, conversations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(conversations));

  @override
  String toString() {
    return 'ResponseConversationsGet(message: $message, conversations: $conversations)';
  }
}

/// @nodoc
abstract mixin class $ResponseConversationsGetCopyWith<$Res> {
  factory $ResponseConversationsGetCopyWith(ResponseConversationsGet value,
          $Res Function(ResponseConversationsGet) _then) =
      _$ResponseConversationsGetCopyWithImpl;
  @useResult
  $Res call({String? message, List<Conversation>? conversations});
}

/// @nodoc
class _$ResponseConversationsGetCopyWithImpl<$Res>
    implements $ResponseConversationsGetCopyWith<$Res> {
  _$ResponseConversationsGetCopyWithImpl(this._self, this._then);

  final ResponseConversationsGet _self;
  final $Res Function(ResponseConversationsGet) _then;

  /// Create a copy of ResponseConversationsGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? conversations = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      conversations: freezed == conversations
          ? _self.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseConversationsGet].
extension ResponseConversationsGetPatterns on ResponseConversationsGet {
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
    TResult Function(_ResponseConversationsGet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet() when $default != null:
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
    TResult Function(_ResponseConversationsGet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet():
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
    TResult? Function(_ResponseConversationsGet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet() when $default != null:
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
    TResult Function(String? message, List<Conversation>? conversations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet() when $default != null:
        return $default(_that.message, _that.conversations);
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
    TResult Function(String? message, List<Conversation>? conversations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet():
        return $default(_that.message, _that.conversations);
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
    TResult? Function(String? message, List<Conversation>? conversations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsGet() when $default != null:
        return $default(_that.message, _that.conversations);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseConversationsGet implements ResponseConversationsGet {
  const _ResponseConversationsGet(
      {required this.message, required final List<Conversation>? conversations})
      : _conversations = conversations;
  factory _ResponseConversationsGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsGetFromJson(json);

  @override
  final String? message;
  final List<Conversation>? _conversations;
  @override
  List<Conversation>? get conversations {
    final value = _conversations;
    if (value == null) return null;
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ResponseConversationsGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseConversationsGetCopyWith<_ResponseConversationsGet> get copyWith =>
      __$ResponseConversationsGetCopyWithImpl<_ResponseConversationsGet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseConversationsGetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseConversationsGet &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_conversations));

  @override
  String toString() {
    return 'ResponseConversationsGet(message: $message, conversations: $conversations)';
  }
}

/// @nodoc
abstract mixin class _$ResponseConversationsGetCopyWith<$Res>
    implements $ResponseConversationsGetCopyWith<$Res> {
  factory _$ResponseConversationsGetCopyWith(_ResponseConversationsGet value,
          $Res Function(_ResponseConversationsGet) _then) =
      __$ResponseConversationsGetCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, List<Conversation>? conversations});
}

/// @nodoc
class __$ResponseConversationsGetCopyWithImpl<$Res>
    implements _$ResponseConversationsGetCopyWith<$Res> {
  __$ResponseConversationsGetCopyWithImpl(this._self, this._then);

  final _ResponseConversationsGet _self;
  final $Res Function(_ResponseConversationsGet) _then;

  /// Create a copy of ResponseConversationsGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? conversations = freezed,
  }) {
    return _then(_ResponseConversationsGet(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      conversations: freezed == conversations
          ? _self._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>?,
    ));
  }
}

// dart format on
