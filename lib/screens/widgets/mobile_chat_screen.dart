import 'package:flutter/material.dart';
import 'package:whattsapp_ui/colors.dart';
import 'package:whattsapp_ui/screens/widgets/chat_list.dart';
import 'package:whattsapp_ui/screens/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: 'Type message here',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
