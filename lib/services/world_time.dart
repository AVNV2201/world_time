import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_time/services/env_data.dart';

class WorldTime{

  String loaction;
  String flag;
  String urlHeader;
  String time;
  String date;
  bool isDayTime;

  WorldTime({ this.loaction, this.flag, this.urlHeader });

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

  static WorldTime getInstance( WorldTime w ){
    WorldTime newInstance = WorldTime(
      loaction: w.loaction,
      flag: w.flag,
      urlHeader: w.urlHeader
    );
    newInstance.time = w.time;
    newInstance.date = w.date;
    newInstance.isDayTime = w.isDayTime;
    return newInstance;
  }

}





