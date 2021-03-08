import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_time/services/env_data.dart';

class WorldTime{

  String location;
  String flag;
  String urlHeader;
  String time;
  String date;
  bool isDayTime;
  bool isInitialized;

  WorldTime({ this.location, this.flag, this.urlHeader, this.isInitialized = true });

  WorldTime.getInstance(){
    isInitialized = false;
  }

  Future<void> getTime() async {
    Response response = await get('${StaticResources.timeApiUrl}$urlHeader');

    // converting the json response to Dart Map format
    Map data = jsonDecode(response.body);
    DateTime dateTime = DateTime.parse(data['utc_datetime']);
    // dateTime = dateTime.toLocal();
    int offset = data['raw_offset'];
    Duration duration = Duration(seconds: offset);
    dateTime = dateTime.add(duration);

    // setting up time
    time = DateFormat.jm().format(dateTime);

    // setting date
    date = DateFormat(DateFormat.ABBR_MONTH_WEEKDAY_DAY).format(dateTime);

    // setting up is day time
    isDayTime = ( dateTime.hour >= 6 && dateTime.hour <= 19 ) ;
  }

  void copy( WorldTime w ){
    this.location = w.location;
    this.time = w.time;
    this.flag = w.flag;
    this.date = w.date;
    this.isDayTime = w.isDayTime;
    this.urlHeader = w.urlHeader;
    this.isInitialized = true;
  }

}





