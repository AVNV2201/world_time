import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    WorldTime instance = ModalRoute.of(context).settings.arguments;
    print(instance.time);
    return Scaffold(
      appBar: AppBar(
        title: Text("World Time"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: getTimeInfowidget(instance),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/day.png'),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }

  Widget getTimeInfowidget( WorldTime instance ){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            instance.time,
            style: TextStyle(
              fontSize: 72.0,
              color: Colors.white
            ),
          ),
        ),
        Container(
          child: Text(
            instance.date,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/${instance.flag}'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            SizedBox(width: 10.0,),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                instance.loaction,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

}