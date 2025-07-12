import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/communities.dart';
import 'package:whatsapp_ui/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), Updates(), Communities(), Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white70,

      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;

          });
        },
        selectedItemColor: Colors.white,unselectedItemColor: Colors.black,showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.chat),
            label: "Chats",backgroundColor: Colors.green,

          ),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),body: pages[index],
    );
  }
}
