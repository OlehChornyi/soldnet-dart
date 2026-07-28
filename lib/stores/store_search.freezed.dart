// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreSearchModel {
  List<User> get users;
  List<String> get usersAlreadyAddedToSingleChats;
  User? get selectedUser;

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreSearchModelCopyWith<StoreSearchModel> get copyWith =>
      _$StoreSearchModelCopyWithImpl<StoreSearchModel>(
          this as StoreSearchModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreSearchModel &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(
                other.usersAlreadyAddedToSingleChats,
                usersAlreadyAddedToSingleChats) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(usersAlreadyAddedToSingleChats),
      selectedUser);

  @override
  String toString() {
    return 'StoreSearchModel(users: $users, usersAlreadyAddedToSingleChats: $usersAlreadyAddedToSingleChats, selectedUser: $selectedUser)';
  }
}

/// @nodoc
abstract mixin class $StoreSearchModelCopyWith<$Res> {
  factory $StoreSearchModelCopyWith(
          StoreSearchModel value, $Res Function(StoreSearchModel) _then) =
      _$StoreSearchModelCopyWithImpl;
  @useResult
  $Res call(
      {List<User> users,
      List<String> usersAlreadyAddedToSingleChats,
      User? selectedUser});

  $UserCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class _$StoreSearchModelCopyWithImpl<$Res>
    implements $StoreSearchModelCopyWith<$Res> {
  _$StoreSearchModelCopyWithImpl(this._self, this._then);

  final StoreSearchModel _self;
  final $Res Function(StoreSearchModel) _then;

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? usersAlreadyAddedToSingleChats = null,
    Object? selectedUser = freezed,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      usersAlreadyAddedToSingleChats: null == usersAlreadyAddedToSingleChats
          ? _self.usersAlreadyAddedToSingleChats
          : usersAlreadyAddedToSingleChats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedUser: freezed == selectedUser
          ? _self.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get selectedUser {
    if (_self.selectedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.selectedUser!, (value) {
      return _then(_self.copyWith(selectedUser: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StoreSearchModel].
extension StoreSearchModelPatterns on StoreSearchModel {
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
    TResult Function(_StoreSearchModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel() when $default != null:
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
    TResult Function(_StoreSearchModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel():
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
    TResult? Function(_StoreSearchModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel() when $default != null:
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
    TResult Function(List<User> users,
            List<String> usersAlreadyAddedToSingleChats, User? selectedUser)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel() when $default != null:
        return $default(_that.users, _that.usersAlreadyAddedToSingleChats,
            _that.selectedUser);
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
    TResult Function(List<User> users,
            List<String> usersAlreadyAddedToSingleChats, User? selectedUser)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel():
        return $default(_that.users, _that.usersAlreadyAddedToSingleChats,
            _that.selectedUser);
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
    TResult? Function(List<User> users,
            List<String> usersAlreadyAddedToSingleChats, User? selectedUser)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreSearchModel() when $default != null:
        return $default(_that.users, _that.usersAlreadyAddedToSingleChats,
            _that.selectedUser);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StoreSearchModel implements StoreSearchModel {
  const _StoreSearchModel(
      {required final List<User> users,
      required final List<String> usersAlreadyAddedToSingleChats,
      required this.selectedUser})
      : _users = users,
        _usersAlreadyAddedToSingleChats = usersAlreadyAddedToSingleChats;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<String> _usersAlreadyAddedToSingleChats;
  @override
  List<String> get usersAlreadyAddedToSingleChats {
    if (_usersAlreadyAddedToSingleChats is EqualUnmodifiableListView)
      return _usersAlreadyAddedToSingleChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersAlreadyAddedToSingleChats);
  }

  @override
  final User? selectedUser;

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreSearchModelCopyWith<_StoreSearchModel> get copyWith =>
      __$StoreSearchModelCopyWithImpl<_StoreSearchModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreSearchModel &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(
                other._usersAlreadyAddedToSingleChats,
                _usersAlreadyAddedToSingleChats) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_usersAlreadyAddedToSingleChats),
      selectedUser);

  @override
  String toString() {
    return 'StoreSearchModel(users: $users, usersAlreadyAddedToSingleChats: $usersAlreadyAddedToSingleChats, selectedUser: $selectedUser)';
  }
}

/// @nodoc
abstract mixin class _$StoreSearchModelCopyWith<$Res>
    implements $StoreSearchModelCopyWith<$Res> {
  factory _$StoreSearchModelCopyWith(
          _StoreSearchModel value, $Res Function(_StoreSearchModel) _then) =
      __$StoreSearchModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<User> users,
      List<String> usersAlreadyAddedToSingleChats,
      User? selectedUser});

  @override
  $UserCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class __$StoreSearchModelCopyWithImpl<$Res>
    implements _$StoreSearchModelCopyWith<$Res> {
  __$StoreSearchModelCopyWithImpl(this._self, this._then);

  final _StoreSearchModel _self;
  final $Res Function(_StoreSearchModel) _then;

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
    Object? usersAlreadyAddedToSingleChats = null,
    Object? selectedUser = freezed,
  }) {
    return _then(_StoreSearchModel(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      usersAlreadyAddedToSingleChats: null == usersAlreadyAddedToSingleChats
          ? _self._usersAlreadyAddedToSingleChats
          : usersAlreadyAddedToSingleChats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedUser: freezed == selectedUser
          ? _self.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of StoreSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get selectedUser {
    if (_self.selectedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.selectedUser!, (value) {
      return _then(_self.copyWith(selectedUser: value));
    });
  }
}

// dart format on
