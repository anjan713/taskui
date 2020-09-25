import 'package:flutter/material.dart';
import 'package:taskui/homescreen/home_body.dart';
import 'package:taskui/homescreen/widgets/extra_list.dart';

import './widgets/user_info_header.dart';
import './widgets/task_metrics_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          UserInfoHeader(),
          TaskMetricsList(),
          ExtraList(),
          // const SizedBox(height: 18),
          Expanded(child: HomeBody()),
        ]),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child:
              BottomNavigationBar(backgroundColor: Color(0XFFEAA7E5), items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Home2'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Home'),
            ),
          ])),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
