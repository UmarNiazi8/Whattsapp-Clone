import 'package:flutter/material.dart';
import 'package:whattsapp_ui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
          color: dividerColor,
        )),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
