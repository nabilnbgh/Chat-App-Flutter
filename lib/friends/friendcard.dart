import 'package:chatapp/friends/friend.dart';
import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({super.key, required this.friend});
  final Friend friend;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () {},
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 34, 45, 52),
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 29,
                        backgroundImage: NetworkImage(friend.picture),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        friend.name,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        friend.status,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color.fromARGB(255, 233, 237, 239),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
