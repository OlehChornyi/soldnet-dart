// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QueryUserSearch {
  String? get name;
  String? get rank;
  String? get profession;
  String? get hobby;

  /// Create a copy of QueryUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QueryUserSearchCopyWith<QueryUserSearch> get copyWith =>
      _$QueryUserSearchCopyWithImpl<QueryUserSearch>(
          this as QueryUserSearch, _$identity);

  /// Serializes this QueryUserSearch to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryUserSearch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.hobby, hobby) || other.hobby == hobby));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, rank, profession, hobby);

  @override
  String toString() {
    return 'QueryUserSearch(name: $name, rank: $rank, profession: $profession, hobby: $hobby)';
  }
}

/// @nodoc
abstract mixin class $QueryUserSearchCopyWith<$Res> {
  factory $QueryUserSearchCopyWith(
          QueryUserSearch value, $Res Function(QueryUserSearch) _then) =
      _$QueryUserSearchCopyWithImpl;
  @useResult
  $Res call({String? name, String? rank, String? profession, String? hobby});
}

/// @nodoc
class _$QueryUserSearchCopyWithImpl<$Res>
    implements $QueryUserSearchCopyWith<$Res> {
  _$QueryUserSearchCopyWithImpl(this._self, this._then);

  final QueryUserSearch _self;
  final $Res Function(QueryUserSearch) _then;

  /// Create a copy of QueryUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? rank = freezed,
    Object? profession = freezed,
    Object? hobby = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _self.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      hobby: freezed == hobby
          ? _self.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QueryUserSearch].
extension QueryUserSearchPatterns on QueryUserSearch {
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
    TResult Function(_QueryUserSearch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch() when $default != null:
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
    TResult Function(_QueryUserSearch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch():
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
    TResult? Function(_QueryUserSearch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch() when $default != null:
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
    TResult Function(
            String? name, String? rank, String? profession, String? hobby)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch() when $default != null:
        return $default(_that.name, _that.rank, _that.profession, _that.hobby);
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
    TResult Function(
            String? name, String? rank, String? profession, String? hobby)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch():
        return $default(_that.name, _that.rank, _that.profession, _that.hobby);
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
    TResult? Function(
            String? name, String? rank, String? profession, String? hobby)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryUserSearch() when $default != null:
        return $default(_that.name, _that.rank, _that.profession, _that.hobby);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QueryUserSearch implements QueryUserSearch {
  const _QueryUserSearch(
      {required this.name,
      required this.rank,
      required this.profession,
      required this.hobby});
  factory _QueryUserSearch.fromJson(Map<String, dynamic> json) =>
      _$QueryUserSearchFromJson(json);

  @override
  final String? name;
  @override
  final String? rank;
  @override
  final String? profession;
  @override
  final String? hobby;

  /// Create a copy of QueryUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QueryUserSearchCopyWith<_QueryUserSearch> get copyWith =>
      __$QueryUserSearchCopyWithImpl<_QueryUserSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QueryUserSearchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryUserSearch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.hobby, hobby) || other.hobby == hobby));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, rank, profession, hobby);

  @override
  String toString() {
    return 'QueryUserSearch(name: $name, rank: $rank, profession: $profession, hobby: $hobby)';
  }
}

/// @nodoc
abstract mixin class _$QueryUserSearchCopyWith<$Res>
    implements $QueryUserSearchCopyWith<$Res> {
  factory _$QueryUserSearchCopyWith(
          _QueryUserSearch value, $Res Function(_QueryUserSearch) _then) =
      __$QueryUserSearchCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? rank, String? profession, String? hobby});
}

/// @nodoc
class __$QueryUserSearchCopyWithImpl<$Res>
    implements _$QueryUserSearchCopyWith<$Res> {
  __$QueryUserSearchCopyWithImpl(this._self, this._then);

  final _QueryUserSearch _self;
  final $Res Function(_QueryUserSearch) _then;

  /// Create a copy of QueryUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? rank = freezed,
    Object? profession = freezed,
    Object? hobby = freezed,
  }) {
    return _then(_QueryUserSearch(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _self.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      hobby: freezed == hobby
          ? _self.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ResponseUserSearch {
  String? get message;
  List<User>? get users;

  /// Create a copy of ResponseUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseUserSearchCopyWith<ResponseUserSearch> get copyWith =>
      _$ResponseUserSearchCopyWithImpl<ResponseUserSearch>(
          this as ResponseUserSearch, _$identity);

  /// Serializes this ResponseUserSearch to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseUserSearch &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'ResponseUserSearch(message: $message, users: $users)';
  }
}

/// @nodoc
abstract mixin class $ResponseUserSearchCopyWith<$Res> {
  factory $ResponseUserSearchCopyWith(
          ResponseUserSearch value, $Res Function(ResponseUserSearch) _then) =
      _$ResponseUserSearchCopyWithImpl;
  @useResult
  $Res call({String? message, List<User>? users});
}

/// @nodoc
class _$ResponseUserSearchCopyWithImpl<$Res>
    implements $ResponseUserSearchCopyWith<$Res> {
  _$ResponseUserSearchCopyWithImpl(this._self, this._then);

  final ResponseUserSearch _self;
  final $Res Function(ResponseUserSearch) _then;

  /// Create a copy of ResponseUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? users = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResponseUserSearch].
extension ResponseUserSearchPatterns on ResponseUserSearch {
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
    TResult Function(_ResponseUserSearch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch() when $default != null:
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
    TResult Function(_ResponseUserSearch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch():
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
    TResult? Function(_ResponseUserSearch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch() when $default != null:
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
    TResult Function(String? message, List<User>? users)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch() when $default != null:
        return $default(_that.message, _that.users);
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
    TResult Function(String? message, List<User>? users) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch():
        return $default(_that.message, _that.users);
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
    TResult? Function(String? message, List<User>? users)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseUserSearch() when $default != null:
        return $default(_that.message, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseUserSearch implements ResponseUserSearch {
  const _ResponseUserSearch(
      {required this.message, required final List<User>? users})
      : _users = users;
  factory _ResponseUserSearch.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserSearchFromJson(json);

  @override
  final String? message;
  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ResponseUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseUserSearchCopyWith<_ResponseUserSearch> get copyWith =>
      __$ResponseUserSearchCopyWithImpl<_ResponseUserSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseUserSearchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUserSearch &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'ResponseUserSearch(message: $message, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$ResponseUserSearchCopyWith<$Res>
    implements $ResponseUserSearchCopyWith<$Res> {
  factory _$ResponseUserSearchCopyWith(
          _ResponseUserSearch value, $Res Function(_ResponseUserSearch) _then) =
      __$ResponseUserSearchCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, List<User>? users});
}

/// @nodoc
class __$ResponseUserSearchCopyWithImpl<$Res>
    implements _$ResponseUserSearchCopyWith<$Res> {
  __$ResponseUserSearchCopyWithImpl(this._self, this._then);

  final _ResponseUserSearch _self;
  final $Res Function(_ResponseUserSearch) _then;

  /// Create a copy of ResponseUserSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? users = freezed,
  }) {
    return _then(_ResponseUserSearch(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

// dart format on
