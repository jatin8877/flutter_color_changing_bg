import 'package:color_changing_app/provider.dart';
import 'package:color_changing_app/provider_02.dart';
import 'package:color_changing_app/screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorApp(),
    );
  }
}

Future main(List<String> args) async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TextProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorChange(),
        ),
        ProxyProvider<TextProvider, TextProvider2>(
            update: (context, msg, msg2) => TextProvider2(msg))
      ],
      child: const Demo(),
    ),
  );
}
