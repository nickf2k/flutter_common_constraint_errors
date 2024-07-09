import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'errors_page/overflow_page.dart';
import 'errors_page/renderbox_not_laid_out_page.dart';
import 'errors_page/vertical_viewport_unbounded_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Common Constraint Errors'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const RenderBoxNotLaidOutPage(),
                  ),
                );
              },
              child: const Text('RenderBox was not laid out'),
            ),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OverflowPage(),
                  ),
                );
              },
              child: const Text('overflow...'),
            ),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VerticalViewportUnboundedPage(),
                  ),
                );
              },
              child:
                  const Text('Vertical viewport was given unbounded height...'),
            ),
          ],
        ),
      ),
    );
  }
}
