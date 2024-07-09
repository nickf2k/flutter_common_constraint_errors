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
        child: Column(),
      ),
    );
  }
}
