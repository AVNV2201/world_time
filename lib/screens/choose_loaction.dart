import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.indigo[500],
      ),
      body: Container(
        color: Colors.black,
        // width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 180.0,
              width: 180.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.orange[800],
                  width: 10.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
              ],
            ),
            Container(
              height: 180.0,
              width: 180.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.orange[800],
                  width: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}