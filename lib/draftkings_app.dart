import 'package:draftkings_app/router/router.dart';
import 'package:flutter/material.dart';

class DraftkingsApp extends StatelessWidget {
  DraftkingsApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Montserrat'),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );  }
}
