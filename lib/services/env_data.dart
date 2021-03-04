import 'package:world_time/services/world_time.dart';

class StaticResources{

  static String timeApiUrl = 'http://worldtimeapi.org/api/timezone/';
  static List<WorldTime> locations = [
    WorldTime(urlHeader: 'Asia/Kolkata', flag: 'india.png', loaction: 'India'),
    WorldTime(urlHeader: 'America/Mexico_City', flag: 'mexico.png', loaction: 'Mexico'),
    WorldTime(urlHeader: 'America/New_York', flag: 'usa.png', loaction: 'New York'),
    WorldTime(urlHeader: 'Europe/London', flag: 'uk.png', loaction: 'London'),
    WorldTime(urlHeader: 'America/Los_Angeles', flag: 'usa.png', loaction: 'Los Angeles'),
    WorldTime(urlHeader: 'Europe/Berlin', flag: 'germany.png', loaction: 'Germany'),
    WorldTime(urlHeader: 'Africa/Cairo', flag: 'egypt.png', loaction: 'Egypt'),
  ];

}