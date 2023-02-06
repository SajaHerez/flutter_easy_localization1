import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_localization1/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'lib/lang',
      supportedLocales: const [Locale('ar'), Locale('en'), Locale('it')],
      fallbackLocale: const Locale('en'),
      // saveLocale: true,
      child: const HomeScreen()));
}
