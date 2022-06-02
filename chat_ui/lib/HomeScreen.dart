import 'package:chat_ui/Widgets/Catergory_Selector.dart';
import 'package:chat_ui/Widgets/favouriteContacts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Theme.of(context).primaryColor, 
        appBar: AppBar(
         actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),
         iconSize: 30.0,),
         ], 
         elevation: 0.0, 
         centerTitle: true, 
         leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),
         iconSize: 30.0,
         ), 
          title: Text("Chats",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        body: Column(
          children: [
           CategorySelector(),
           Expanded(
             child: Container(
              height: 500.0, 
               decoration: BoxDecoration(
                color: Theme.of(context).accentColor, 
                borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30.0),
                 topRight: Radius.circular(30.0) 
                )
               ),
             child: Column(
              children: [
               FavoriteContacts()
              ], 
             ),  
             ),
           )
          ],
        ),
      ));
  }
}
