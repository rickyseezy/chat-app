import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_state.g.dart';

abstract class ChatState{}

class ChatInitialState extends ChatState{}

class ChatLoadingState extends ChatState{}

abstract class ChatLoadedState extends ChatState implements Built<ChatLoadedState, ChatLoadedStateBuilder> {
  @nullable
  int get messageId;
  String get message;
  int get userId;

  ChatLoadedState._();
  factory ChatLoadedState([void Function(ChatLoadedStateBuilder) updates]) = _$ChatLoadedState;
}

abstract class ChatNewMessageState extends ChatState implements Built<ChatNewMessageState, ChatNewMessageStateBuilder> {
  @nullable
  int get messageId;
  String get message;
  int get userId;

  ChatNewMessageState._();
  factory ChatNewMessageState([void Function(ChatNewMessageStateBuilder) updates]) = _$ChatNewMessageState;
}

class ChatErrorState extends ChatState{}

class ChatMessageConsumedState extends ChatState{}