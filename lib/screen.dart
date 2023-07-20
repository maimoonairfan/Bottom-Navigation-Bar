import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation Bar"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Color.fromARGB(255, 236, 38, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.playlist_play,
                ),
                label: "PLaylist",
                backgroundColor: Colors.deepPurpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: "News",
                backgroundColor: Color.fromARGB(255, 143, 131, 177))
          ],
        ),
      ),
    );
  }
}
