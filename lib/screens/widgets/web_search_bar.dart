import 'package:flutter/material.dart';
import 'package:whattsapp_ui/colors.dart';

class WebScreenBar extends StatelessWidget {
  const WebScreenBar({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.07,
      width: screenWidth * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search or Start a new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
