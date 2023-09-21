import 'package:chatapp/friends/friendspage.dart';
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
    }
    return const Text("ALOOOOOOO");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: choosedPage(),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
