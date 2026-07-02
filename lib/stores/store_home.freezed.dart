// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreHomeModel {
  HomeTab get tab;

  /// Create a copy of StoreHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreHomeModelCopyWith<StoreHomeModel> get copyWith =>
      _$StoreHomeModelCopyWithImpl<StoreHomeModel>(
          this as StoreHomeModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreHomeModel &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @override
  String toString() {
    return 'StoreHomeModel(tab: $tab)';
  }
}

/// @nodoc
abstract mixin class $StoreHomeModelCopyWith<$Res> {
  factory $StoreHomeModelCopyWith(
          StoreHomeModel value, $Res Function(StoreHomeModel) _then) =
      _$StoreHomeModelCopyWithImpl;
  @useResult
  $Res call({HomeTab tab});
}

/// @nodoc
class _$StoreHomeModelCopyWithImpl<$Res>
    implements $StoreHomeModelCopyWith<$Res> {
  _$StoreHomeModelCopyWithImpl(this._self, this._then);

  final StoreHomeModel _self;
  final $Res Function(StoreHomeModel) _then;

  /// Create a copy of StoreHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_self.copyWith(
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as HomeTab,
    ));
  }
}

/// Adds pattern-matching-related methods to [StoreHomeModel].
extension StoreHomeModelPatterns on StoreHomeModel {
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
    TResult Function(_StoreHomeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel() when $default != null:
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
    TResult Function(_StoreHomeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel():
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
    TResult? Function(_StoreHomeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel() when $default != null:
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
    TResult Function(HomeTab tab)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel() when $default != null:
        return $default(_that.tab);
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
    TResult Function(HomeTab tab) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel():
        return $default(_that.tab);
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
    TResult? Function(HomeTab tab)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreHomeModel() when $default != null:
        return $default(_that.tab);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StoreHomeModel implements StoreHomeModel {
  const _StoreHomeModel({required this.tab});

  @override
  final HomeTab tab;

  /// Create a copy of StoreHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreHomeModelCopyWith<_StoreHomeModel> get copyWith =>
      __$StoreHomeModelCopyWithImpl<_StoreHomeModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreHomeModel &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @override
  String toString() {
    return 'StoreHomeModel(tab: $tab)';
  }
}

/// @nodoc
abstract mixin class _$StoreHomeModelCopyWith<$Res>
    implements $StoreHomeModelCopyWith<$Res> {
  factory _$StoreHomeModelCopyWith(
          _StoreHomeModel value, $Res Function(_StoreHomeModel) _then) =
      __$StoreHomeModelCopyWithImpl;
  @override
  @useResult
  $Res call({HomeTab tab});
}

/// @nodoc
class __$StoreHomeModelCopyWithImpl<$Res>
    implements _$StoreHomeModelCopyWith<$Res> {
  __$StoreHomeModelCopyWithImpl(this._self, this._then);

  final _StoreHomeModel _self;
  final $Res Function(_StoreHomeModel) _then;

  /// Create a copy of StoreHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tab = null,
  }) {
    return _then(_StoreHomeModel(
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as HomeTab,
    ));
  }
}

// dart format on
