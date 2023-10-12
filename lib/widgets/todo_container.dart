import 'package:flutter/material.dart';

class TodoContainer
 extends StatelessWidget {
  const TodoContainer
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ListTile( leading: Text("leading"), title: Text("title"), trailing: Icon(Icons.close), ),
        Divider()
      ],
    );
  }
}

