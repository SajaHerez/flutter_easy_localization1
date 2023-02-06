import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var style = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 149, 22, 172)));
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'localization',
        style: TextStyle(fontSize: 23),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'hi_text',
              style: TextStyle(fontSize: 28),
            ).tr(),
            Image.asset('flag'.tr()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(const Locale('ar'));
                    },
                    child: const Text('ar')),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(const Locale('en'));
                    },
                    child: const Text('en')),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(const Locale('it'));
                    },
                    child: const Text('it')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
