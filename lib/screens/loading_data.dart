import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingData extends StatefulWidget {
  @override
  _LoadingDataState createState() => _LoadingDataState();
}

class _LoadingDataState extends State<LoadingData> {

  @override
  void initState() {
    super.initState();
    // debugPrint("here first");
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint("reached here");
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SpinKitChasingDots(
              color: Colors.white,
              size: 150.0,
            ),
          ),
          SizedBox(height: 50.0,),
          Center(
            child: Text(
              "Loading...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
              ),
            )
          ),
        ] 
      ),
    );
  }
}