import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whattsapp_ui/colors.dart';
import 'package:whattsapp_ui/screens/widgets/chat_list.dart';
import 'package:whattsapp_ui/screens/widgets/contacts_list.dart';
import 'package:whattsapp_ui/screens/widgets/web_chat_app_bar.dart';
import 'package:whattsapp_ui/screens/widgets/web_profile_bar.dart';
import 'package:whattsapp_ui/screens/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: Column(
            children: [
              WebProfileBar(),
              WebScreenBar(),
              Expanded(child: ContactsList()),
            ],
          ),
        ),
        // web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              WebChatAppBar(),
              Expanded(child: ChatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 20)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
