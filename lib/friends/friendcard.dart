import 'package:chatapp/friends/friend.dart';
import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({super.key, required this.friend});
  final Friend friend;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundImage: NetworkImage(friend.picture),
              ),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(friend.name),
            const SizedBox(
              height: 8.0,
            ),
            Text(friend.status),
          ]),
        ],
      ),
    );
  }
}
