import 'dart:math';
import 'dart:convert';
import 'package:chat_app/cubit/chat_cubit.dart';
import 'package:chat_app/cubit/chat_state.dart';
import 'package:chat_app/data/model/message_response.dart';
import 'package:chat_app/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

var rng = new Random();
final userId = rng.nextInt(100);

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _chatCubit = kiwi.KiwiContainer().resolve<ChatBloc>();
  TextEditingController _controller;
  final List<Message> messages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _chatCubit.notify().close();
  }
  @override
  Widget build(BuildContext context) {
    // listen continuously to new messages ..
    _chatCubit.notify().on("message", (data){
      final message = MessageResponse.fromJson(data);
      _chatCubit.onMessage(message);
    });

    return BlocProvider(
      create: (_) => _chatCubit,
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          print(state);
          if(state is ChatLoadedState) {
            messages.add(Message(isSender: userId == state.userId, content: state.message,));
            _chatCubit.messageConsumed();
          }

          return _chat();
        },
      ),
    );
  }

  Widget _chat() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: messages,
              ),
            ),
          ),
        ),
        Positioned(bottom: 0, child: _chatInput())
      ],
    );
  }

  Widget _chatInput(){
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextField(
              controller: _controller,
              style: TextStyle(color: Colors.white),
              onSubmitted: (value) {
                final message = MessageResponse((b) => b..userId = userId
                    ..message = value
                );
                _controller.clear();
                _chatCubit.sendMessage(jsonEncode(message));
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Send a message ..',
              )),
        ));
  }
}
