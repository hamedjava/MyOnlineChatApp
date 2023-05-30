import 'package:flutter/material.dart';
import 'package:my_chat/view/pages/auth/login.dart';
import 'package:my_chat/view/pages/auth/signup.dart';
import 'package:my_chat/view/pages/home/index.dart';
import 'package:my_chat/view/pages/profile/chat_deteil_page.dart';
import 'package:my_chat/view/pages/profile/userDetail.dart';

class MyRoutes {
  static const String login = "/login";
  static const String signup = "/signup";
  static const String home = "/home";
  static const String userDeteil = "/userdeteil";
  static const String chatdeteilpage = 'static const String ';
  final Map<String, Widget Function(BuildContext)> routes = {
    login: (context) => const Login(),
    home: (context) => const Index(),
    signup: (context) => const Signup(),
    userDeteil: (context) => const UserDetail(),
    chatdeteilpage: (context) => ChatDetailPage(),
  };
}
