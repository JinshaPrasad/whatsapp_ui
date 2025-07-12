import 'package:flutter/material.dart';
class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      title: Text("calls"),
      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 25),
        Icon(Icons.camera_alt),
        SizedBox(width: 25),
        Icon(Icons.more_vert),
        SizedBox(width: 25),
      ],
    ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "data:image/webp;base64,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",
              ),
            ),
          ),
        ],
      ),);
  }
}
