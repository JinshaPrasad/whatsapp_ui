import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("calls"),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 25),
          Icon(Icons.search),
          SizedBox(width: 25),
          Icon(Icons.more_vert),
          SizedBox(width: 25),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Favourites"),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(CupertinoIcons.heart_solid),
            ),
            title: Text("Add favorites"),
          ),
          Text("Recent"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.7QzNDpuDey3Z2BkRonUaUAHaHa?w=195&h=195&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
              ),
            ),
            title: Text("User"),
            subtitle: Text("Yesterday,5.09 pm"),
          ),
        ],
      ),
    );
  }
}
