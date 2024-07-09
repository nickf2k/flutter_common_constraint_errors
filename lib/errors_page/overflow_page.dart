import 'package:flutter/material.dart';

class OverflowPage extends StatelessWidget {
  const OverflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A RenderFlex overflowed by'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Row(
          children: [
            const Icon(Icons.error),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title',
                    style: Theme.of(context).textTheme.headlineMedium),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed '
                  'do eiusmod tempor incididunt ut labore et dolore magna '
                  'aliqua. Ut enim ad minim veniam, quis nostrud '
                  'exercitation ullamco laboris nisi ut aliquip ex ea '
                  'commodo consequat.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
