import 'package:flutter/material.dart';
import 'package:world_time/services/env_data.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.indigo[500],
      ),
      body: ListView.builder(
          itemCount: StaticResources.locations.length,
          itemBuilder: ( context, index ){
            return Padding(
              padding: const EdgeInsets.all(2.5),
              child: InkWell(
                onTap: (){
                  updateLocation(index);
                },
                child: Card(
                  child: Container(
                    height: 120.0,
                    alignment: Alignment.center,
                    child: getListTile(index),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

  Widget getListTile( int index ){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image(
                image: AssetImage('assets/${StaticResources.locations[index].flag}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          flex: 2,
            child: Text(
              StaticResources.locations[index].loaction,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
        )
      ],
    );
  }  // getListTile

  void updateLocation( int index ) async {
    WorldTime instance = StaticResources.locations[index];
    await instance.getTime();
    print(instance.time);
    Navigator.pop(context, instance );
  }  // updateLocation

}