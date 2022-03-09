import 'package:flutter/material.dart';
import 'package:timeiptv/data/models/video.dart';
import 'package:timeiptv/drawer/aboutus.dart';
import 'package:timeiptv/drawer/contact.dart';
import 'package:timeiptv/drawer/feedback.dart';
import 'package:timeiptv/drawer/platformservice.dart';
import 'package:timeiptv/drawer/prayer.dart';
import 'package:timeiptv/drawer/satelite.dart';
import 'package:timeiptv/home/home.dart';
import 'package:timeiptv/players/better_player.dart';
import 'package:timeiptv/players/radio_player2.dart';
import 'package:timeiptv/players/video_player.dart';
import 'package:timeiptv/players/youtube_player.dart';

import 'utils/strings.dart';

import 'home/home.dart';

class AppRouter {
  AppRouter() {}

  Route generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case DEFAULT_ROUTE:
        print('Default Route');
        return MaterialPageRoute(builder: (_) => HomePage());
      case ABOUTUS_ROUTE:
        return MaterialPageRoute(builder: (_) => AboutusPage());
      case CONTACT_ROUTE:
        return MaterialPageRoute(builder: (_) => ContactPage());
      case SATELITE_ROUTE:
        return MaterialPageRoute(builder: (_) => SatelitePage());
      case PLATFORMSERVICE_ROUTE:
        return MaterialPageRoute(builder: (_) => PlatFormServicePage());
      case PRAYER_ROUTE:
        return MaterialPageRoute(builder: (_) => PrayerPage());
      case FEEDBACK_ROUTE:
        return MaterialPageRoute(builder: (_) => FeedBackPage());
      case TV_ROUTE:
        video args = settings.arguments as video;
        return MaterialPageRoute(
            builder: (_) => VideoPlayerPage(
                  record: args,
                ));
      case TV_ROUTE1:
        video args = settings.arguments as video;
        return MaterialPageRoute(
            builder: (_) => BetterPlayerPage(
                  record: args,
                ));
      case RADIO_ROUTE:
        video args = settings.arguments as video;
        return MaterialPageRoute(
            builder: (_) => MyRadioPlayer2(
                  record: args,
                ));
      case YOUTUBE_ROUTE:
        video args = settings.arguments as video;
        return MaterialPageRoute(
          builder: (_) => YoutubePlayerPage(
            record: args,
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
