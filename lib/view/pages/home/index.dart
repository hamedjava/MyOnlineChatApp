import 'package:flutter/material.dart';
import 'package:my_chat/view/pages/home/conversationList.dart';
import 'package:my_chat/model/globals/ChatPage.dart' as chatUsers;

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black87,
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chat App",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.purple[600],
                        )),
                    const Text("Account"),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          color: Colors.purple[600],
                        )),
                    const Text("Home"),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.privacy_tip_sharp,
                          color: Color.fromARGB(255, 250, 0, 0),
                        )),
                    const Text("Privacy"),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Color.fromARGB(255, 45, 44, 45),
                        )),
                    const Text("Setting"),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.dark_mode,
                          color: Colors.purple[600],
                        )),
                    const Text("Dark Mode"),
                  ],
                )),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            pinned: true,
            floating: true,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Chat App"),
            ), //FlexibleSpaceBar
            expandedHeight: 100,
            backgroundColor: Colors.black87,
            shadowColor: Colors.black38,
            leading: Builder(
              builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer()),
            ),
            actions: const <Widget>[],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: ListView.builder(
                    itemCount: chatUsers.chatUsers.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ConversationList(
                        name: chatUsers.chatUsers[index].name,
                        messageText: chatUsers.chatUsers[index].messageText,
                        imageUrl: chatUsers.chatUsers[index].imageURL,
                        time: chatUsers.chatUsers[index].time,
                        isMessageRead:
                            (index == 0 || index == 3) ? true : false,
                      );
                    },
                  ), //Text
                ), //Center
              ), //ListTile
              childCount: chatUsers.chatUsers.length,
            ), //SliverChildBuildDelegate
          ) //SliverList
        ],
      ),
    );
  }
}
