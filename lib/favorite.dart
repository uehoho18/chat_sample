import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  FavoriteState createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return (Container(
        child: Text('Favorite'),
        alignment: Alignment.center,
        color: Colors.pink.withOpacity(0.5)));
  }
}
