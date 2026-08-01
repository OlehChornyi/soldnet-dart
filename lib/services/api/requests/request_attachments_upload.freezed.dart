// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_attachments_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseAttachmentUpload {
  Attachment? get attachment;
  String? get message;

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseAttachmentUploadCopyWith<ResponseAttachmentUpload> get copyWith =>
      _$ResponseAttachmentUploadCopyWithImpl<ResponseAttachmentUpload>(
          this as ResponseAttachmentUpload, _$identity);

  /// Serializes this ResponseAttachmentUpload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseAttachmentUpload &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attachment, message);

  @override
  String toString() {
    return 'ResponseAttachmentUpload(attachment: $attachment, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseAttachmentUploadCopyWith<$Res> {
  factory $ResponseAttachmentUploadCopyWith(ResponseAttachmentUpload value,
          $Res Function(ResponseAttachmentUpload) _then) =
      _$ResponseAttachmentUploadCopyWithImpl;
  @useResult
  $Res call({Attachment? attachment, String? message});

  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class _$ResponseAttachmentUploadCopyWithImpl<$Res>
    implements $ResponseAttachmentUploadCopyWith<$Res> {
  _$ResponseAttachmentUploadCopyWithImpl(this._self, this._then);

  final ResponseAttachmentUpload _self;
  final $Res Function(ResponseAttachmentUpload) _then;

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachment = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_self.attachment!, (value) {
      return _then(_self.copyWith(attachment: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ResponseAttachmentUpload].
extension ResponseAttachmentUploadPatterns on ResponseAttachmentUpload {
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
    TResult Function(_ResponseAttachmentUpload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload() when $default != null:
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
    TResult Function(_ResponseAttachmentUpload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload():
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
    TResult? Function(_ResponseAttachmentUpload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload() when $default != null:
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
    TResult Function(Attachment? attachment, String? message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload() when $default != null:
        return $default(_that.attachment, _that.message);
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
    TResult Function(Attachment? attachment, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload():
        return $default(_that.attachment, _that.message);
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
    TResult? Function(Attachment? attachment, String? message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseAttachmentUpload() when $default != null:
        return $default(_that.attachment, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseAttachmentUpload implements ResponseAttachmentUpload {
  const _ResponseAttachmentUpload(
      {required this.attachment, required this.message});
  factory _ResponseAttachmentUpload.fromJson(Map<String, dynamic> json) =>
      _$ResponseAttachmentUploadFromJson(json);

  @override
  final Attachment? attachment;
  @override
  final String? message;

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseAttachmentUploadCopyWith<_ResponseAttachmentUpload> get copyWith =>
      __$ResponseAttachmentUploadCopyWithImpl<_ResponseAttachmentUpload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseAttachmentUploadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseAttachmentUpload &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attachment, message);

  @override
  String toString() {
    return 'ResponseAttachmentUpload(attachment: $attachment, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseAttachmentUploadCopyWith<$Res>
    implements $ResponseAttachmentUploadCopyWith<$Res> {
  factory _$ResponseAttachmentUploadCopyWith(_ResponseAttachmentUpload value,
          $Res Function(_ResponseAttachmentUpload) _then) =
      __$ResponseAttachmentUploadCopyWithImpl;
  @override
  @useResult
  $Res call({Attachment? attachment, String? message});

  @override
  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class __$ResponseAttachmentUploadCopyWithImpl<$Res>
    implements _$ResponseAttachmentUploadCopyWith<$Res> {
  __$ResponseAttachmentUploadCopyWithImpl(this._self, this._then);

  final _ResponseAttachmentUpload _self;
  final $Res Function(_ResponseAttachmentUpload) _then;

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? attachment = freezed,
    Object? message = freezed,
  }) {
    return _then(_ResponseAttachmentUpload(
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ResponseAttachmentUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_self.attachment!, (value) {
      return _then(_self.copyWith(attachment: value));
    });
  }
}

// dart format on
