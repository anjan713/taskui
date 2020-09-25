import 'package:flutter/material.dart';
import 'package:taskui/homescreen/widgets/custom_tab_list.dart';
import 'package:taskui/homescreen/widgets/task_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Column(
        children: [
          CustomTabList(),
          TaskList(),
        ],
      ),
    );
  }
}
