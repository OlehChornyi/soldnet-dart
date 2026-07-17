// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_conversations_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyConversationsCreate {
  String get title;
  List<int> get members;

  /// Create a copy of BodyConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyConversationsCreateCopyWith<BodyConversationsCreate> get copyWith =>
      _$BodyConversationsCreateCopyWithImpl<BodyConversationsCreate>(
          this as BodyConversationsCreate, _$identity);

  /// Serializes this BodyConversationsCreate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyConversationsCreate &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(members));

  @override
  String toString() {
    return 'BodyConversationsCreate(title: $title, members: $members)';
  }
}

/// @nodoc
abstract mixin class $BodyConversationsCreateCopyWith<$Res> {
  factory $BodyConversationsCreateCopyWith(BodyConversationsCreate value,
          $Res Function(BodyConversationsCreate) _then) =
      _$BodyConversationsCreateCopyWithImpl;
  @useResult
  $Res call({String title, List<int> members});
}

/// @nodoc
class _$BodyConversationsCreateCopyWithImpl<$Res>
    implements $BodyConversationsCreateCopyWith<$Res> {
  _$BodyConversationsCreateCopyWithImpl(this._self, this._then);

  final BodyConversationsCreate _self;
  final $Res Function(BodyConversationsCreate) _then;

  /// Create a copy of BodyConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? members = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _self.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodyConversationsCreate].
extension BodyConversationsCreatePatterns on BodyConversationsCreate {
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
    TResult Function(_BodyConversationsCreate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate() when $default != null:
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
    TResult Function(_BodyConversationsCreate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate():
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
    TResult? Function(_BodyConversationsCreate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate() when $default != null:
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
    TResult Function(String title, List<int> members)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate() when $default != null:
        return $default(_that.title, _that.members);
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
    TResult Function(String title, List<int> members) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate():
        return $default(_that.title, _that.members);
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
    TResult? Function(String title, List<int> members)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyConversationsCreate() when $default != null:
        return $default(_that.title, _that.members);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BodyConversationsCreate implements BodyConversationsCreate {
  const _BodyConversationsCreate(
      {required this.title, required final List<int> members})
      : _members = members;
  factory _BodyConversationsCreate.fromJson(Map<String, dynamic> json) =>
      _$BodyConversationsCreateFromJson(json);

  @override
  final String title;
  final List<int> _members;
  @override
  List<int> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  /// Create a copy of BodyConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyConversationsCreateCopyWith<_BodyConversationsCreate> get copyWith =>
      __$BodyConversationsCreateCopyWithImpl<_BodyConversationsCreate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyConversationsCreateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyConversationsCreate &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_members));

  @override
  String toString() {
    return 'BodyConversationsCreate(title: $title, members: $members)';
  }
}

/// @nodoc
abstract mixin class _$BodyConversationsCreateCopyWith<$Res>
    implements $BodyConversationsCreateCopyWith<$Res> {
  factory _$BodyConversationsCreateCopyWith(_BodyConversationsCreate value,
          $Res Function(_BodyConversationsCreate) _then) =
      __$BodyConversationsCreateCopyWithImpl;
  @override
  @useResult
  $Res call({String title, List<int> members});
}

/// @nodoc
class __$BodyConversationsCreateCopyWithImpl<$Res>
    implements _$BodyConversationsCreateCopyWith<$Res> {
  __$BodyConversationsCreateCopyWithImpl(this._self, this._then);

  final _BodyConversationsCreate _self;
  final $Res Function(_BodyConversationsCreate) _then;

  /// Create a copy of BodyConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? members = null,
  }) {
    return _then(_BodyConversationsCreate(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _self._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
mixin _$ResponseConversationsCreate {
  String? get message;
  String? get conversation;

  /// Create a copy of ResponseConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseConversationsCreateCopyWith<ResponseConversationsCreate>
      get copyWith => _$ResponseConversationsCreateCopyWithImpl<
              ResponseConversationsCreate>(
          this as ResponseConversationsCreate, _$identity);

  /// Serializes this ResponseConversationsCreate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseConversationsCreate &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, conversation);

  @override
  String toString() {
    return 'ResponseConversationsCreate(message: $message, conversation: $conversation)';
  }
}

/// @nodoc
abstract mixin class $ResponseConversationsCreateCopyWith<$Res> {
  factory $ResponseConversationsCreateCopyWith(
          ResponseConversationsCreate value,
          $Res Function(ResponseConversationsCreate) _then) =
      _$ResponseConversationsCreateCopyWithImpl;
  @useResult
  $Res call({String? message, String? conversation});
}

/// @nodoc
class _$ResponseConversationsCreateCopyWithImpl<$Res>
    implements $ResponseConversationsCreateCopyWith<$Res> {
  _$ResponseConversationsCreateCopyWithImpl(this._self, this._then);

  final ResponseConversationsCreate _self;
  final $Res Function(ResponseConversationsCreate) _then;

  /// Create a copy of ResponseConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      conversation: freezed == conversation
          ? _self.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseConversationsCreate].
extension ResponseConversationsCreatePatterns on ResponseConversationsCreate {
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
    TResult Function(_ResponseConversationsCreate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate() when $default != null:
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
    TResult Function(_ResponseConversationsCreate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate():
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
    TResult? Function(_ResponseConversationsCreate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate() when $default != null:
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
    TResult Function(String? message, String? conversation)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate() when $default != null:
        return $default(_that.message, _that.conversation);
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
    TResult Function(String? message, String? conversation) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate():
        return $default(_that.message, _that.conversation);
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
    TResult? Function(String? message, String? conversation)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseConversationsCreate() when $default != null:
        return $default(_that.message, _that.conversation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseConversationsCreate implements ResponseConversationsCreate {
  const _ResponseConversationsCreate(
      {required this.message, required this.conversation});
  factory _ResponseConversationsCreate.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsCreateFromJson(json);

  @override
  final String? message;
  @override
  final String? conversation;

  /// Create a copy of ResponseConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseConversationsCreateCopyWith<_ResponseConversationsCreate>
      get copyWith => __$ResponseConversationsCreateCopyWithImpl<
          _ResponseConversationsCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseConversationsCreateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseConversationsCreate &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, conversation);

  @override
  String toString() {
    return 'ResponseConversationsCreate(message: $message, conversation: $conversation)';
  }
}

/// @nodoc
abstract mixin class _$ResponseConversationsCreateCopyWith<$Res>
    implements $ResponseConversationsCreateCopyWith<$Res> {
  factory _$ResponseConversationsCreateCopyWith(
          _ResponseConversationsCreate value,
          $Res Function(_ResponseConversationsCreate) _then) =
      __$ResponseConversationsCreateCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, String? conversation});
}

/// @nodoc
class __$ResponseConversationsCreateCopyWithImpl<$Res>
    implements _$ResponseConversationsCreateCopyWith<$Res> {
  __$ResponseConversationsCreateCopyWithImpl(this._self, this._then);

  final _ResponseConversationsCreate _self;
  final $Res Function(_ResponseConversationsCreate) _then;

  /// Create a copy of ResponseConversationsCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_ResponseConversationsCreate(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      conversation: freezed == conversation
          ? _self.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
