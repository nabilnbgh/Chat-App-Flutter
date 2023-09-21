import 'package:chatapp/friends/friend.dart';
import 'package:chatapp/friends/friendcard.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  List<Friend> listFriend = [];

  void addFriend() {
    listFriend.add(Friend(
        id: 16,
        name: "Azhar",
        picture: "https://image.ibb.co/eeqWbw/zen_1.jpg",
        status: "Busy"));
    listFriend.add(Friend(
        id: 14,
        name: "Adin",
        picture: "https://image.ibb.co/iasYpG/ash_1.jpg",
        status: "Available"));
    listFriend.add(Friend(
        id: 13,
        name: "Fikri",
        picture: "https://image.ibb.co/nd0Wbw/zoey_1.jpgg",
        status: "Phone Only"));
    listFriend.add(Friend(
        id: 12,
        name: "Nabil",
        picture: "https://image.ibb.co/dM6hib/tara_1.jpg",
        status: "Hehehehehe"));
  }

  @override
  void initState() {
    super.initState();
    addFriend();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return FriendCard(
          friend: listFriend[index],
        );
      }),
      itemCount: listFriend.length,
    );
  }
}
