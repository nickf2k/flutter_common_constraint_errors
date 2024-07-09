import 'package:flutter/material.dart';

class RenderBoxNotLaidOutPage extends StatelessWidget {
  const RenderBoxNotLaidOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderBox was not laid out'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Header'),
            // Wrap below ListView with Expanded
            ListView(
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text('Accessibility'),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
