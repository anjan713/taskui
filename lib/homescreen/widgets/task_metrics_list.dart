import 'package:flutter/material.dart';

class TaskMetricsList extends StatelessWidget {
  // const TaskMetricsList({Key key}) : super(key: key);
  final List<String> _values = ['One', 'Two', 'Three'];
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
          return TaskMetricsItem(_values[index]);
        },
      ),
    );
  }
}

class TaskMetricsItem extends StatelessWidget {
  final String textvalue;
  const TaskMetricsItem(this.textvalue, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textvalue,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
          ),
          Text(
            'Total Task',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Colors.white),
          ),
          const Spacer(),
          Text(
            '12% completed ',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
