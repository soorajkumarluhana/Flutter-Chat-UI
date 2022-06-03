import 'package:chat_ui/Models/message-model.dart';
import 'package:chat_ui/Widgets/ChatsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300.0,
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> ChatScreern(user: chat.sender) )),
                  child: Container(
                   margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0), 
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: chat.unread? Color(0xFFFFEFED) : Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                           CircleAvatar(
                             radius: 35.0,
                             backgroundImage: AssetImage(chat.sender.imageURL),
                           ), 
                           SizedBox(width: 10.0,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                             children: [
                               Text(chat.sender.name,
                               style: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
                               ),
                              SizedBox(height: 5.0,), 
                               Container(
                                width: MediaQuery.of(context).size.width * 0.45, 
                                 child: Text(chat.text, 
                                 style: TextStyle(color: Colors.blueGrey, fontSize: 15.0, fontWeight: FontWeight.w600),
                                 overflow: TextOverflow.ellipsis,
                                 ),
                               ),
                             ],
                           ),
                          ],
                        ),
                      Column(
                        children: [
                          Text(chat.time,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        chat.unread?  
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                             color: Theme.of(context).primaryColor, 
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                           alignment: Alignment.center, 
                            child: Text("NEW")) : Text(""),
                        ],
                      )  
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
