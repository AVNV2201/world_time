import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  WorldTime instance = WorldTime.getInstance();

  @override
  Widget build(BuildContext context) {

    if (instance.isInitialized == true ) print(instance.location);
    if (instance.isInitialized == false) {
      WorldTime arg = ModalRoute.of(context).settings.arguments;
      instance.copy(arg);
    }

    String bgImage = instance.isDayTime ? 'day.png' : 'night.png';
    print(instance.location);

    return Scaffold(
      appBar: AppBar(
        title: Text("World Time"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: getTimeInfoWidget(instance),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }

  Widget getTimeInfoWidget(WorldTime instance) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            instance.time,
            style: TextStyle(fontSize: 72.0, color: Colors.white),
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
        SizedBox(
          height: 20.0,
        ),
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
              )),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                instance.location,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100.0,
        ),
        ElevatedButton.icon(
            onPressed: () async {
              dynamic result = await Navigator.pushNamed(context, '/locationlist');
              if (result != null) {
                setState(() {
                  instance.copy(result);
                  print(instance.location);
                });
              }
            },
            icon: Icon(
              Icons.edit_location,
              color: Colors.green[900],
            ),
            label: Text(
              'Change Location',
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }
}
