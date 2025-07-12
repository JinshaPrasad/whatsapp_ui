import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.duLqCGZpfivynKSXEW1ZkwHaHa?w=194&h=188&c=7&r=0&o=5&pid=1.7",
              ),
            ),
            title: Text("user"),
            subtitle: Text("hlo"),
            trailing: Text("data"),
          ),
        ],
      ),
    );
  }
}
