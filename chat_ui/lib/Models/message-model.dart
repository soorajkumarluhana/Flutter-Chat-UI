import 'package:chat_ui/Models/User-Model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser =
    User(id: 0, name: "Current User", imageURL: "assets/images/greg.jpg");
final User greg = User(id: 1, name: "Greg", imageURL: "assets/images/greg.jpg");
final User james =
    User(id: 2, name: "James", imageURL: "assets/images/james.jpg");
final User john = User(id: 3, name: "John", imageURL: "assets/images/john.jpg");
final User olivia =
    User(id: 4, name: "Olivia", imageURL: "assets/images/olivia.jpg");
final User sam = User(id: 5, name: "Sam", imageURL: "assets/images/sam.jpg");
final User sophia =
    User(id: 6, name: "sophia", imageURL: "assets/images/sophia.jpg");
final User steven =
    User(id: 6, name: "Steven", imageURL: "assets/images/steven.jpg");

List<User> favorites = [sam, greg, james, steven, olivia];

List<Message> chats = [
  Message(sender: james, time: "5:30 PM", text: "Hey, How is it going", isLiked: false, unread: true),
  Message(sender: olivia, time: "4:30 PM", text: "Hey, How is it going", isLiked: false, unread: true),
  Message(sender: john, time: "3:30 PM", text: " Hey, How is it going", isLiked: false, unread: false),
  Message(sender: sophia, time: "2:30 PM", text: "Hey, How is it going", isLiked: false, unread: true),
  Message(sender: greg, time: "1:30 PM", text: "Hey, How is it going", isLiked: true, unread: false),
  Message(sender: steven, time: "12:30 PM", text: "Hey, How is it going", isLiked: false, unread: true),
  Message(sender: sam, time: "11:30 PM", text: "Hey, How is it going", isLiked: true, unread: true),
  
];
