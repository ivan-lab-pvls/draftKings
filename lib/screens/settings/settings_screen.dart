import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/router/router.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:draftkings_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Settings'.toUpperCase(),
                  style: TextStyle(
                      color: AppColors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: AppColors.lightGrey, width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sound',
                            style: TextStyle(
                                color: AppColors.lightGrey,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Switch(value: false, onChanged: (value) {}),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: AppColors.lightGrey, width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vibro',
                            style: TextStyle(
                                color: AppColors.lightGrey,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Switch(value: false, onChanged: (value) {}),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    ActionButtonWidget(
                        text: 'Privacy Policy',
                        color: AppColors.green,
                        width: 250,
                        onTap: () {}),
                    SizedBox(height: 25),
                    ActionButtonWidget(
                        text: 'Terms of Use',
                        color: AppColors.green,
                        width: 250,
                        onTap: () {}),
                    SizedBox(height: 25),
                    ActionButtonWidget(
                        text: 'About Us',
                        color: AppColors.green,
                        width: 250,
                        onTap: () {
                          context.router.push(AboutRoute());
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
