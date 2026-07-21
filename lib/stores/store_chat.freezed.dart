// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreChatModel {
  int get chatUserId;
  ChatTab get tab;
  DialogBg get dialogBg;
  List<User> get users;
  List<Conversation> get conversations;
  Map<int, List<Message>> get messagesByConversationId;
  Conversation? get selectedConversation;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreChatModelCopyWith<StoreChatModel> get copyWith =>
      _$StoreChatModelCopyWithImpl<StoreChatModel>(
          this as StoreChatModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreChatModel &&
            (identical(other.chatUserId, chatUserId) ||
                other.chatUserId == chatUserId) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.dialogBg, dialogBg) ||
                other.dialogBg == dialogBg) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality()
                .equals(other.conversations, conversations) &&
            const DeepCollectionEquality().equals(
                other.messagesByConversationId, messagesByConversationId) &&
            (identical(other.selectedConversation, selectedConversation) ||
                other.selectedConversation == selectedConversation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatUserId,
      tab,
      dialogBg,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(conversations),
      const DeepCollectionEquality().hash(messagesByConversationId),
      selectedConversation);

  @override
  String toString() {
    return 'StoreChatModel(chatUserId: $chatUserId, tab: $tab, dialogBg: $dialogBg, users: $users, conversations: $conversations, messagesByConversationId: $messagesByConversationId, selectedConversation: $selectedConversation)';
  }
}

/// @nodoc
abstract mixin class $StoreChatModelCopyWith<$Res> {
  factory $StoreChatModelCopyWith(
          StoreChatModel value, $Res Function(StoreChatModel) _then) =
      _$StoreChatModelCopyWithImpl;
  @useResult
  $Res call(
      {int chatUserId,
      ChatTab tab,
      DialogBg dialogBg,
      List<User> users,
      List<Conversation> conversations,
      Map<int, List<Message>> messagesByConversationId,
      Conversation? selectedConversation});

  $ConversationCopyWith<$Res>? get selectedConversation;
}

/// @nodoc
class _$StoreChatModelCopyWithImpl<$Res>
    implements $StoreChatModelCopyWith<$Res> {
  _$StoreChatModelCopyWithImpl(this._self, this._then);

  final StoreChatModel _self;
  final $Res Function(StoreChatModel) _then;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUserId = null,
    Object? tab = null,
    Object? dialogBg = null,
    Object? users = null,
    Object? conversations = null,
    Object? messagesByConversationId = null,
    Object? selectedConversation = freezed,
  }) {
    return _then(_self.copyWith(
      chatUserId: null == chatUserId
          ? _self.chatUserId
          : chatUserId // ignore: cast_nullable_to_non_nullable
              as int,
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as ChatTab,
      dialogBg: null == dialogBg
          ? _self.dialogBg
          : dialogBg // ignore: cast_nullable_to_non_nullable
              as DialogBg,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      conversations: null == conversations
          ? _self.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      messagesByConversationId: null == messagesByConversationId
          ? _self.messagesByConversationId
          : messagesByConversationId // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Message>>,
      selectedConversation: freezed == selectedConversation
          ? _self.selectedConversation
          : selectedConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
    ));
  }

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get selectedConversation {
    if (_self.selectedConversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_self.selectedConversation!, (value) {
      return _then(_self.copyWith(selectedConversation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StoreChatModel].
extension StoreChatModelPatterns on StoreChatModel {
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
    TResult Function(_StoreChatModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
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
    TResult Function(_StoreChatModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel():
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
    TResult? Function(_StoreChatModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
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
            int chatUserId,
            ChatTab tab,
            DialogBg dialogBg,
            List<User> users,
            List<Conversation> conversations,
            Map<int, List<Message>> messagesByConversationId,
            Conversation? selectedConversation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(
            _that.chatUserId,
            _that.tab,
            _that.dialogBg,
            _that.users,
            _that.conversations,
            _that.messagesByConversationId,
            _that.selectedConversation);
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
            int chatUserId,
            ChatTab tab,
            DialogBg dialogBg,
            List<User> users,
            List<Conversation> conversations,
            Map<int, List<Message>> messagesByConversationId,
            Conversation? selectedConversation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel():
        return $default(
            _that.chatUserId,
            _that.tab,
            _that.dialogBg,
            _that.users,
            _that.conversations,
            _that.messagesByConversationId,
            _that.selectedConversation);
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
            int chatUserId,
            ChatTab tab,
            DialogBg dialogBg,
            List<User> users,
            List<Conversation> conversations,
            Map<int, List<Message>> messagesByConversationId,
            Conversation? selectedConversation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(
            _that.chatUserId,
            _that.tab,
            _that.dialogBg,
            _that.users,
            _that.conversations,
            _that.messagesByConversationId,
            _that.selectedConversation);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StoreChatModel implements StoreChatModel {
  const _StoreChatModel(
      {required this.chatUserId,
      required this.tab,
      required this.dialogBg,
      required final List<User> users,
      required final List<Conversation> conversations,
      required final Map<int, List<Message>> messagesByConversationId,
      required this.selectedConversation})
      : _users = users,
        _conversations = conversations,
        _messagesByConversationId = messagesByConversationId;

  @override
  final int chatUserId;
  @override
  final ChatTab tab;
  @override
  final DialogBg dialogBg;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  final Map<int, List<Message>> _messagesByConversationId;
  @override
  Map<int, List<Message>> get messagesByConversationId {
    if (_messagesByConversationId is EqualUnmodifiableMapView)
      return _messagesByConversationId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_messagesByConversationId);
  }

  @override
  final Conversation? selectedConversation;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreChatModelCopyWith<_StoreChatModel> get copyWith =>
      __$StoreChatModelCopyWithImpl<_StoreChatModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreChatModel &&
            (identical(other.chatUserId, chatUserId) ||
                other.chatUserId == chatUserId) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.dialogBg, dialogBg) ||
                other.dialogBg == dialogBg) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            const DeepCollectionEquality().equals(
                other._messagesByConversationId, _messagesByConversationId) &&
            (identical(other.selectedConversation, selectedConversation) ||
                other.selectedConversation == selectedConversation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatUserId,
      tab,
      dialogBg,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_conversations),
      const DeepCollectionEquality().hash(_messagesByConversationId),
      selectedConversation);

  @override
  String toString() {
    return 'StoreChatModel(chatUserId: $chatUserId, tab: $tab, dialogBg: $dialogBg, users: $users, conversations: $conversations, messagesByConversationId: $messagesByConversationId, selectedConversation: $selectedConversation)';
  }
}

/// @nodoc
abstract mixin class _$StoreChatModelCopyWith<$Res>
    implements $StoreChatModelCopyWith<$Res> {
  factory _$StoreChatModelCopyWith(
          _StoreChatModel value, $Res Function(_StoreChatModel) _then) =
      __$StoreChatModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int chatUserId,
      ChatTab tab,
      DialogBg dialogBg,
      List<User> users,
      List<Conversation> conversations,
      Map<int, List<Message>> messagesByConversationId,
      Conversation? selectedConversation});

  @override
  $ConversationCopyWith<$Res>? get selectedConversation;
}

/// @nodoc
class __$StoreChatModelCopyWithImpl<$Res>
    implements _$StoreChatModelCopyWith<$Res> {
  __$StoreChatModelCopyWithImpl(this._self, this._then);

  final _StoreChatModel _self;
  final $Res Function(_StoreChatModel) _then;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatUserId = null,
    Object? tab = null,
    Object? dialogBg = null,
    Object? users = null,
    Object? conversations = null,
    Object? messagesByConversationId = null,
    Object? selectedConversation = freezed,
  }) {
    return _then(_StoreChatModel(
      chatUserId: null == chatUserId
          ? _self.chatUserId
          : chatUserId // ignore: cast_nullable_to_non_nullable
              as int,
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as ChatTab,
      dialogBg: null == dialogBg
          ? _self.dialogBg
          : dialogBg // ignore: cast_nullable_to_non_nullable
              as DialogBg,
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      conversations: null == conversations
          ? _self._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      messagesByConversationId: null == messagesByConversationId
          ? _self._messagesByConversationId
          : messagesByConversationId // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Message>>,
      selectedConversation: freezed == selectedConversation
          ? _self.selectedConversation
          : selectedConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
    ));
  }

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get selectedConversation {
    if (_self.selectedConversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_self.selectedConversation!, (value) {
      return _then(_self.copyWith(selectedConversation: value));
    });
  }
}

// dart format on
