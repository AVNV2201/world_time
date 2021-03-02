import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Time"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(child: timeInfo),
    );
  }

  Widget timeInfo = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "1:20 PM",
        style: TextStyle(
          fontSize: 48.0,
        ),
      ),
      SizedBox(height: 10.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Mumbai",
              style: TextStyle(
                fontSize: 24.0
              ),
            ),
          )
        ],
      ),
    ],
  );
}