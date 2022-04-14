import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  var listItem = new List.generate(100, (i) => i);

  Future<void> _refresh() {
    return Future.sync(() {
      setState(() {
        listItem = listItem.map((item) => item + 1).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: RefreshIndicator(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: listItem.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blue),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                      title: Text('$index'),
                      subtitle: Text('&listItem'),
                      onTap: () {/* react to the tile being tapped */},
                    ));
              },
            ),
            onRefresh: _refresh,
          ),
        )
      ],
    );
  }
}
