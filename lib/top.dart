import 'package:flutter/material.dart';
import 'package:chat_sample/call.dart';
import 'package:chat_sample/chat.dart';
import 'package:chat_sample/favorite.dart';
import 'package:chat_sample/mail.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectIndex = 0;

  var _pages = <Widget>[
    new Chat(),
    new Call(),
    new Mail(),
    new Favorite(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index; //インデックスの更新
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('プロフィール'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("お知らせ"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("よくある質問"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("利用規約"),
              // leading: Padding(
              //   padding: const EdgeInsets.all(8.0), // マージンの設定
              //   child: Icon(Icons.search), // アイコンの種類
              // ),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("個人情報の取り扱い"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("プライバシーポリシー"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("お問い合わせ"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _selectIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
