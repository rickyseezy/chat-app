import 'dart:math';
import 'package:chat_app/cubit/chat_state.dart';
import 'package:chat_app/data/model/message_response.dart';
import 'package:chat_app/repository/chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ChatBloc extends Cubit<ChatState> {
  ChatRepository _chatRepository;

  ChatBloc(this._chatRepository) : super(ChatInitialState());

  void sendMessage(String msg) {
    try {
      _chatRepository.sendMessage(msg);
    } catch (e) {
      print(e);
      emit(ChatErrorState());
    }
  }

  void onMessage(MessageResponse msg) {
    // simulate a message id from db
    final messageId = new Random().nextInt(100);

    final message = msg.message;
   emit(ChatLoadedState((b) => b
      ..userId = msg.userId
      ..message = message
   ..messageId = messageId));
  }

  void messageConsumed() {
    emit(ChatMessageConsumedState());
  }

  Socket notify () {
    // return instance of socket
    return _chatRepository.socket;
  }
}
