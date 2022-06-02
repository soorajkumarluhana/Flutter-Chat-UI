import 'package:chat_ui/Models/message-model.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Favorite Contacts",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
          child:
              ListView.builder(
               padding: EdgeInsets.all(10.0), 
               scrollDirection: Axis.horizontal, 
                itemBuilder: (BuildContext context, int index) {
            return Text(favorites[index].name); 
          }),
        )
      ],
    );
  }
}
