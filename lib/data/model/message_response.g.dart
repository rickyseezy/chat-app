// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageResponse> _$messageResponseSerializer =
    new _$MessageResponseSerializer();

class _$MessageResponseSerializer
    implements StructuredSerializer<MessageResponse> {
  @override
  final Iterable<Type> types = const [MessageResponse, _$MessageResponse];
  @override
  final String wireName = 'MessageResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MessageResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageResponse extends MessageResponse {
  @override
  final int userId;
  @override
  final String message;

  factory _$MessageResponse([void Function(MessageResponseBuilder) updates]) =>
      (new MessageResponseBuilder()..update(updates)).build();

  _$MessageResponse._({this.userId, this.message}) : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('MessageResponse', 'userId');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('MessageResponse', 'message');
    }
  }

  @override
  MessageResponse rebuild(void Function(MessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageResponseBuilder toBuilder() =>
      new MessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageResponse &&
        userId == other.userId &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userId.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageResponse')
          ..add('userId', userId)
          ..add('message', message))
        .toString();
  }
}

class MessageResponseBuilder
    implements Builder<MessageResponse, MessageResponseBuilder> {
  _$MessageResponse _$v;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MessageResponseBuilder();

  MessageResponseBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessageResponse;
  }

  @override
  void update(void Function(MessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageResponse build() {
    final _$result =
        _$v ?? new _$MessageResponse._(userId: userId, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
