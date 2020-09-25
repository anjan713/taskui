import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar(this.imageUrl) : assert(imageUrl != null);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return imageUrl == null
        ? Icon(Icons.person)
        : CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          );
  }
}
