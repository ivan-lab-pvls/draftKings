import 'package:DK_app/draft.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/settings/config.dart';

bool? gsdfgdfscvds;
String cxdasdsa = '';

late SharedPreferences gfdhgfddf;
final inAppReview = InAppReview.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(options: Drew.currentPlatform);
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 25),
    minimumFetchInterval: const Duration(seconds: 25),
  ));
  await FirebaseRemoteConfig.instance.fetchAndActivate();
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared.setAppId("d6a8fbac-4766-4859-9930-4f6b75c69981");
  final accepted =
      await OneSignal.shared.promptUserForPushNotificationPermission();
  gfdhgfddf = await SharedPreferences.getInstance();
  await Future.delayed(const Duration(seconds: 2));
  if (accepted || !accepted) {
    reviewApp();
  }
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(DraftApp());
}

Future<void> reviewApp() async {
  bool gfdsgfdsfds = gfdhgfddf.getBool('sgfdsdcas') ?? false;
  if (!gfdsgfdsfds) {
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
      await gfdhgfddf.setBool('sgfdsdcas', true);
    }
  }
}
