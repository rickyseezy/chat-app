// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatLoadedState extends ChatLoadedState {
  @override
  final int messageId;
  @override
  final String message;
  @override
  final int userId;

  factory _$ChatLoadedState([void Function(ChatLoadedStateBuilder) updates]) =>
      (new ChatLoadedStateBuilder()..update(updates)).build();

  _$ChatLoadedState._({this.messageId, this.message, this.userId}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('ChatLoadedState', 'message');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('ChatLoadedState', 'userId');
    }
  }

  @override
  ChatLoadedState rebuild(void Function(ChatLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatLoadedStateBuilder toBuilder() =>
      new ChatLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatLoadedState &&
        messageId == other.messageId &&
        message == other.message &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, messageId.hashCode), message.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatLoadedState')
          ..add('messageId', messageId)
          ..add('message', message)
          ..add('userId', userId))
        .toString();
  }
}

class ChatLoadedStateBuilder
    implements Builder<ChatLoadedState, ChatLoadedStateBuilder> {
  _$ChatLoadedState _$v;

  int _messageId;
  int get messageId => _$this._messageId;
  set messageId(int messageId) => _$this._messageId = messageId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  ChatLoadedStateBuilder();

  ChatLoadedStateBuilder get _$this {
    if (_$v != null) {
      _messageId = _$v.messageId;
      _message = _$v.message;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatLoadedState;
  }

  @override
  void update(void Function(ChatLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatLoadedState build() {
    final _$result = _$v ??
        new _$ChatLoadedState._(
            messageId: messageId, message: message, userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$ChatNewMessageState extends ChatNewMessageState {
  @override
  final int messageId;
  @override
  final String message;
  @override
  final int userId;

  factory _$ChatNewMessageState(
          [void Function(ChatNewMessageStateBuilder) updates]) =>
      (new ChatNewMessageStateBuilder()..update(updates)).build();

  _$ChatNewMessageState._({this.messageId, this.message, this.userId})
      : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('ChatNewMessageState', 'message');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('ChatNewMessageState', 'userId');
    }
  }

  @override
  ChatNewMessageState rebuild(
          void Function(ChatNewMessageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatNewMessageStateBuilder toBuilder() =>
      new ChatNewMessageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatNewMessageState &&
        messageId == other.messageId &&
        message == other.message &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, messageId.hashCode), message.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatNewMessageState')
          ..add('messageId', messageId)
          ..add('message', message)
          ..add('userId', userId))
        .toString();
  }
}

class ChatNewMessageStateBuilder
    implements Builder<ChatNewMessageState, ChatNewMessageStateBuilder> {
  _$ChatNewMessageState _$v;

  int _messageId;
  int get messageId => _$this._messageId;
  set messageId(int messageId) => _$this._messageId = messageId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  ChatNewMessageStateBuilder();

  ChatNewMessageStateBuilder get _$this {
    if (_$v != null) {
      _messageId = _$v.messageId;
      _message = _$v.message;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatNewMessageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatNewMessageState;
  }

  @override
  void update(void Function(ChatNewMessageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatNewMessageState build() {
    final _$result = _$v ??
        new _$ChatNewMessageState._(
            messageId: messageId, message: message, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
