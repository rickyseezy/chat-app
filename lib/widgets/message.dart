import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String content;
  final bool isSender;

  Message({@required this.content, @required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: this.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: this.isSender ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
                child: Text(content, style: TextStyle(color: Colors.white),))
          ],),
      ],
    );
  }
}
