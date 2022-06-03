import 'package:chat_ui/Models/User-Model.dart';
import 'package:chat_ui/Models/message-model.dart';
import 'package:flutter/material.dart';

class ChatScreern extends StatefulWidget {
  const ChatScreern({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<ChatScreern> createState() => _ChatScreernState();
}

class _ChatScreernState extends State<ChatScreern> {
  _buildmessage(Message chat, bool isMe) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      margin: isMe ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0) : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
      color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
      
      child: Text(chat.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          widget.user.name,
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 15.0),
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                final bool isMe = chat.sender.id == currentUser.id;
                return _buildmessage(chat, isMe);
              }),
        ),
      ),
    );
  }
}
