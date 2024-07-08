import 'package:flutter/material.dart';

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
      appBar: AppBar(title: const Text('Flutter Common Constraint Errors')),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('RenderBox was not laid out'),
            ),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('overflow...'),
            ),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton(
              onPressed: () {},
              child:
                  const Text('Vertical viewport was given unbounded height...'),
            ),
          ],
        ),
      ),
    );
  }
}
