import 'package:flutter/material.dart';

class VerticalViewportUnboundedPage extends StatelessWidget {
  const VerticalViewportUnboundedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical viewport was given unbounded height'),
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
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.subway),
                  title: Text('Subway'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
