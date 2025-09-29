import 'package:chat_mat/Core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(width:10),
            Text(
              'Aryan',
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child:ListView(
                padding: EdgeInsets.all(20),
                children: [
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                  _buildRecievedMessage(context,'new message for you '),
                  _buildSenderMessage(context,'got your message '),
                ],
              )
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }
}

Widget _buildRecievedMessage(BuildContext context, String message) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin: EdgeInsets.only(right: 30,top: 5,bottom: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.chatBubbleOtherDark,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(
          message,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ),
  );
}

Widget _buildSenderMessage(BuildContext context, String message) {
  return Align(
    alignment: Alignment.centerRight,
    child: Container(
      margin: EdgeInsets.only(left: 30,top: 5,bottom: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.chatBubbleUserDark,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ),
  );
}
Widget _buildMessageInput() {
  return Container(
    margin: const EdgeInsets.all(15),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.grey[850],
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      children: [
        GestureDetector(
          child: Icon(Icons.camera_alt, color: Colors.blueAccent),
          onTap: () {},
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            color: Colors.grey[850],
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Message",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hoverColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                fillColor: Colors.transparent,
                filled: true,
              ),
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.blueAccent,
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: Icon(Icons.send, color: Colors.blueAccent),
          onTap: () {},
        ),
      ],
    ),
  );
}

