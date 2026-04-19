import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/configuration.dart';

class Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentState();
  }
}

class ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: Configurations.attendance.length,
          itemBuilder: (context, index) {
            String date = Configurations.attendance[index][0].toString();
            bool pamarker = Configurations.attendance[index][1] == 0
                ? false
                : true;
            return GestureDetector(
              onTap: () => _showConfirmationDialog(context, index),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(date, style: TextStyle(fontSize: 20)),
                    CircleAvatar(
                      backgroundColor: pamarker ? Colors.green : Colors.red,
                      child: Text(
                        pamarker ? "P" : "A",
                        style: pamarker ? null : TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm"),
          content: Text("Do you want to toggle attendance?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  Configurations.attendance[index][1] =
                      Configurations.attendance[index][1] == 0 ? 1 : 0;
                });
                Navigator.of(context).pop();
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}
