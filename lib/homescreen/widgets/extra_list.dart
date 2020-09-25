import 'package:flutter/material.dart';

class ExtraList extends StatelessWidget {
  // const TaskMetricsList({Key key}) : super(key: key);
  final List<String> _values = [
    'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/one-off/veneno-roadster/slider/veneno-roadster.jpg',
    'https://www.motortrend.com/uploads/sites/5/2018/09/2018-McLaren-720S-front-three-quarter-in-motion-3.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkSr0pDGYwRpe7P2_HolvienGCWaj8W8lSkA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjDx2VUVqWhfdH40X2kz6L2TZxAnHr1hC02w&usqp=CAU',
    'https://www.carpixel.net/w/ff54935df02361fe338261b510530ba8/ferrari-p80-c-wallpaper-hd-89806.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: _values.length,
        itemBuilder: (_, int index) {
          return ExtraItem(_values[index]);
        },
      ),
    );
  }
}

class ExtraItem extends StatelessWidget {
  final String textvalue;
  const ExtraItem(this.textvalue, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(image: NetworkImage(textvalue))),
    );
  }
}
