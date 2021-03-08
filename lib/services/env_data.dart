import 'package:world_time/services/world_time.dart';

class StaticResources {
  static String timeApiUrl = 'https://worldtimeapi.org/api/timezone/';
  static List<WorldTime> locations = [
    WorldTime(
        urlHeader: 'Asia/Kolkata',
        flag: 'india.png',
        location: 'India'
    ),
    WorldTime(
        urlHeader: 'America/Mexico_City',
        flag: 'mexico.png',
        location: 'Mexico'
    ),
    WorldTime(
        urlHeader: 'America/New_York',
        flag: 'usa.png',
        location: 'New York'
    ),
    WorldTime(
        urlHeader: 'Europe/London',
        flag: 'uk.png',
        location: 'London'
    ),
    WorldTime(
        urlHeader: 'America/Los_Angeles',
        flag: 'usa.png',
        location: 'Los Angeles'
    ),
    WorldTime(
        urlHeader: 'Europe/Berlin',
        flag: 'germany.png',
        location: 'Germany'
    ),
    WorldTime(
        urlHeader: 'Africa/Cairo',
        flag: 'egypt.png',
        location: 'Egypt'
    ),
  ];
}
