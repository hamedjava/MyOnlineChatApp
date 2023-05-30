import 'package:flutter/material.dart';
import 'package:my_chat/routes/myroutes.dart';
import 'package:my_chat/view/pages/home/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: MyRoutes().routes,
      home: const Welcome(),
    );
  }
}
