import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/router/router.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:draftkings_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ActionButtonWidget(
                        text: 'Privacy Policy',
                        color: AppColors.green,
                        width: 250,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) => const trmxa(
                                      datatrms: '',
                                    )),
                          );
                        }),
                    SizedBox(height: 25),
                    ActionButtonWidget(
                        text: 'Terms of Use',
                        color: AppColors.green,
                        width: 250,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) => const trmxa(
                                      datatrms: '',
                                    )),
                          );
                        }),
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

class trmxa extends StatelessWidget {
  final String datatrms;

  const trmxa({Key? key, required this.datatrms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(datatrms)),
        ),
      ),
    );
  }
}
