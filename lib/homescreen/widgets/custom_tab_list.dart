import 'package:flutter/material.dart';

class CustomTabList extends StatelessWidget {
  final List<String> dataList = ['Recent', 'Today', 'Upcomming'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: dataList
            .map((data) =>
                CustomTabs(datas: data, isSelected: dataList[0] == data))
            .toList(),
      ),
    );
  }
}

class CustomTabs extends StatelessWidget {
  CustomTabs({this.datas, this.isSelected});
  final String datas;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Text(datas,
              style:
                  TextStyle(color: isSelected ? Colors.black : Colors.black54)),
          SizedBox(height: 4),
          Visibility(
            visible: isSelected,
            child: Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.deepPurple),
            ),
          )
        ],
      ),
    );
  }
}
