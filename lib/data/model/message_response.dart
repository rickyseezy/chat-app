import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chat_app/data/model/serializer.dart';

part 'message_response.g.dart';

abstract class MessageResponse implements Built<MessageResponse, MessageResponseBuilder> {
  int get userId;
  String get message;

  MessageResponse._();
  factory MessageResponse([void Function(MessageResponseBuilder) updates]) = _$MessageResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MessageResponse.serializer, this);
  }

  static MessageResponse fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MessageResponse.serializer, json);
  }

  static Serializer<MessageResponse> get serializer => _$messageResponseSerializer;
}