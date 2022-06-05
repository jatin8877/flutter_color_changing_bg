// import 'package:flutter/cupertino.dart';

import 'package:color_changing_app/provider.dart';
import 'package:color_changing_app/provider_02.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorApp extends StatefulWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  State<ColorApp> createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ColorChange>().randomcolor,
      appBar: AppBar(
        title: const Text('Colors app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ColorChange>().getColor();
              },
              child: const Text(
                'ChangeBG',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.watch<TextProvider>().message.toString(),
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<TextProvider>()
                        .getMessage('Hey I am first Button');
                  },
                  child: const Text(
                    'button 1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<TextProvider2>()
                        .getMessage2('Hey I am second Button');
                  },
                  child: const Text(
                    'button 2',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
