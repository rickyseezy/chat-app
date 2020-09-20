import 'package:chat_app/cubit/chat_cubit.dart';
import 'package:chat_app/cubit/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class ChatInput extends StatefulWidget {
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final _chatCubit = kiwi.KiwiContainer().resolve<ChatBloc>();
  TextEditingController _controller;

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
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      cubit: _chatCubit,
      builder: (context, state){
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
                  _controller.clear();
                  _chatCubit.sendMessage(value);
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Send a message ..',
                )),
          ));
    },);
  }
}
