import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (_, int index) {
        return Text('Dribble UI Platform');
      },
    );
  }
}
