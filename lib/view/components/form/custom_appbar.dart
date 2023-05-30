import 'package:flutter/material.dart';

class AppBars extends AppBar {
  Function() onTap;
  AppBars({super.key, required this.onTap})
      : super(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Chat App",
            style: TextStyle(color: Color.fromARGB(255, 250, 23, 23)),
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                iconSize: 22,
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                iconSize: 22,
                icon: const Icon(Icons.person, color: Colors.blue),
                onPressed: () {},
              ),
            ),
          ],
        );
}
