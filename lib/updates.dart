import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("Updates"),
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
          SizedBox(width: 40),
          Text("Status"),
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://ts1.mm.bing.net/th?id=OIP.REZbc-oOJZMZ0pefuPJNPgHaKe&pid=15.1",
                  ),
                  backgroundColor: Colors.green,
                ),
                Positioned(
                  left: 30,
                  child: Icon(Icons.add_circle_outline_sharp),
                ),
              ],
            ),
            title: Text("Add status"),
            subtitle: Text("Disappears after 24 hours"),
          ),
          ListTile(title: Text("Recent updates")),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.7QzNDpuDey3Z2BkRonUaUAHaHa?w=195&h=195&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
              ),
            ),
            title: Text("Anusree"),
            subtitle: Text("Yesterday,10.40 pm"),
          ),
        ],
      ),
    );
  }
}
