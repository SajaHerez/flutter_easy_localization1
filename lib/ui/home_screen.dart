import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        
      ),
      home:const Home(),
    );
  }
}