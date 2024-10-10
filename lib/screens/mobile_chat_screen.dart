import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/widgets/chat_list.dart';
import 'package:whatsapp_ui/screens/widgets/colors.dart';

class MobileChatScreen extends StatelessWidget {
  final String name;
  final String profilePic;
  final String message;
  final String time;

  const MobileChatScreen({
    Key? key,
    required this.name,
    required this.profilePic,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: appBarColor,
        title: Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(profilePic),
            ),
            const SizedBox(width: 12),
            Expanded(child: Text(name,overflow: TextOverflow.ellipsis,maxLines: 1,)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
              child: ChatList()), // You can customize ChatList based on the message
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: chatBarMessage,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.camera_alt, color: Colors.grey),
                      Icon(Icons.attach_file, color: Colors.grey),
                      Icon(Icons.money, color: Colors.grey),
                    ],
                  ),
                ),
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
