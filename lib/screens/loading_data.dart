import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class LoadingData extends StatefulWidget {
  @override
  _LoadingDataState createState() => _LoadingDataState();
}

class _LoadingDataState extends State<LoadingData> {

  void loadTime() async {
    WorldTime instance = WorldTime(urlHeader: 'Asia/Kolkata', loaction: 'Kolkata', flag: 'india.png');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: instance );
  }

  @override
  void initState() {
    super.initState();
    // debugPrint("here first");
    loadTime();
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