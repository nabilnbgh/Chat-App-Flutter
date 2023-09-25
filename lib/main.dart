import 'package:chatapp/chat/chatpage.dart';
import 'package:chatapp/friends/friendspage.dart';
import 'package:chatapp/profile/profilepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget choosedPage() {
    if (currentIndex == 0) {
      return const FriendsPage();
    } else {
      if (currentIndex == 1) {
        return const ChatPage();
      } else {
        return const ProfilePage();
      }
    }
  }

  Widget pageTitle() {
    if (currentIndex == 0) {
      return const Text("Friend");
    } else {
      if (currentIndex == 1) {
        return const Text("Chat");
      } else {
        return const Text("Profile");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: pageTitle(),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: const Color.fromARGB(255, 17, 27, 33),
        body: SafeArea(
          child: choosedPage(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 13, 20, 25),
          unselectedItemColor: const Color.fromARGB(255, 174, 186, 193),
          selectedItemColor: const Color.fromARGB(255, 72, 201, 141),
          currentIndex: currentIndex,
          onTap: (value) {
            onTapped(value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Friends",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
