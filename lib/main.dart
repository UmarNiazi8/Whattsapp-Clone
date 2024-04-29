import 'package:flutter/material.dart';
import 'package:whattsapp_ui/colors.dart';
import 'package:whattsapp_ui/responsive/responsive_layout.dart';
import 'package:whattsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whattsapp_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whattsapp UI',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()));
  }
}
