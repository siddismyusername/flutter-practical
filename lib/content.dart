import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/configuration.dart';


class Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentState();
  }
}


class ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Content"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Configurations.attendance.length,
          itemBuilder: (context, index) {
            String date = Configurations.attendance[index][0].toString();
            bool pamarker = Configurations.attendance[index][1] == 0
                ? false
                : true;
            return Container(
              margin: EdgeInsetsGeometry.all(10),
              child: Row(
                mainAxisAlignment: .spaceAround,
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
            );
          },
        ),
      ),
    );
  }
}
