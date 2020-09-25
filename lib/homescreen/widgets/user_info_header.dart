import 'package:flutter/material.dart';
import 'package:taskui/widgets/useravatar.dart';

class UserInfoHeader extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  UserInfoHeader({this.padding = const EdgeInsets.all(16.0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'hey Manny',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: 12),
            Text('Lets complete and upload project',
                style: TextStyle(color: Colors.white)),
          ]),
          const Spacer(),
          UserAvatar(
              'http://2.bp.blogspot.com/-diymxRhoKFs/URFbtg7NwbI/AAAAAAAAShE/V_yuQdzmLIU/s1600/Darts+Wallpapers+06.jpg'),
        ],
      ),
    );
  }
}
