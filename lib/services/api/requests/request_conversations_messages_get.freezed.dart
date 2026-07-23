// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_conversations_messages_get.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseConversationsMessagesGet {
  String? get message;
  List<Message>? get messages;

  /// Create a copy of ResponseConversationsMessagesGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseConversationsMessagesGetCopyWith<ResponseConversationsMessagesGet>
      get copyWith => _$ResponseConversationsMessagesGetCopyWithImpl<
              ResponseConversationsMessagesGet>(
          this as ResponseConversationsMessagesGet, _$identity);

  /// Serializes this ResponseConversationsMessagesGet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseConversationsMessagesGet &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(messages));

  @override
  String toString() {
    return 'ResponseConversationsMessagesGet(message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class $ResponseConversationsMessagesGetCopyWith<$Res> {
  factory $ResponseConversationsMessagesGetCopyWith(
          ResponseConversationsMessagesGet value,
          $Res Function(ResponseConversationsMessagesGet) _then) =
      _$ResponseConversationsMessagesGetCopyWithImpl;
  @useResult
  $Res call({String? message, List<Message>? messages});
}

/// @nodoc
class _$ResponseConversationsMessagesGetCopyWithImpl<$Res>
    implements $ResponseConversationsMessagesGetCopyWith<$Res> {
  _$ResponseConversationsMessagesGetCopyWithImpl(this._self, this._then);

  final ResponseConversationsMessagesGet _self;
  final $Res Function(ResponseConversationsMessagesGet) _then;

  /// Create a copy of ResponseConversationsMessagesGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseConversationsMessagesGet].
extension ResponseConversationsMessagesGetPatterns
    on ResponseConversationsMessagesGet {
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
    TResult Function(_ResponseConversationsMessagesGet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet() when $default != null:
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
    TResult Function(_ResponseConversationsMessagesGet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet():
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
    TResult? Function(_ResponseConversationsMessagesGet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet() when $default != null:
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
    TResult Function(String? message, List<Message>? messages)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet() when $default != null:
        return $default(_that.message, _that.messages);
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
    TResult Function(String? message, List<Message>? messages) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet():
        return $default(_that.message, _that.messages);
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
    TResult? Function(String? message, List<Message>? messages)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsMessagesGet() when $default != null:
        return $default(_that.message, _that.messages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseConversationsMessagesGet
    implements ResponseConversationsMessagesGet {
  const _ResponseConversationsMessagesGet(
      {required this.message, required final List<Message>? messages})
      : _messages = messages;
  factory _ResponseConversationsMessagesGet.fromJson(
          Map<String, dynamic> json) =>
      _$ResponseConversationsMessagesGetFromJson(json);

  @override
  final String? message;
  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ResponseConversationsMessagesGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseConversationsMessagesGetCopyWith<_ResponseConversationsMessagesGet>
      get copyWith => __$ResponseConversationsMessagesGetCopyWithImpl<
          _ResponseConversationsMessagesGet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseConversationsMessagesGetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseConversationsMessagesGet &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_messages));

  @override
  String toString() {
    return 'ResponseConversationsMessagesGet(message: $message, messages: $messages)';
  }
}

/// @nodoc
abstract mixin class _$ResponseConversationsMessagesGetCopyWith<$Res>
    implements $ResponseConversationsMessagesGetCopyWith<$Res> {
  factory _$ResponseConversationsMessagesGetCopyWith(
          _ResponseConversationsMessagesGet value,
          $Res Function(_ResponseConversationsMessagesGet) _then) =
      __$ResponseConversationsMessagesGetCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, List<Message>? messages});
}

/// @nodoc
class __$ResponseConversationsMessagesGetCopyWithImpl<$Res>
    implements _$ResponseConversationsMessagesGetCopyWith<$Res> {
  __$ResponseConversationsMessagesGetCopyWithImpl(this._self, this._then);

  final _ResponseConversationsMessagesGet _self;
  final $Res Function(_ResponseConversationsMessagesGet) _then;

  /// Create a copy of ResponseConversationsMessagesGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_ResponseConversationsMessagesGet(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

// dart format on
