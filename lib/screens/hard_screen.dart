import 'package:easy_riverpod_eample_app/utils/riverpod_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HardScreen extends ConsumerWidget {
  const HardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton.icon(
              onPressed: () {
                ref.read(riverPodModelisLight).changeTheme(newBool: true);
              },
              label: const Text('light'),
              icon: Icon(Icons.light_mode)),
          ElevatedButton.icon(
              onPressed: () {
                ref.read(riverPodModelisLight).changeTheme(newBool: false);
              },
              label: const Text('dark'),
              icon: Icon(Icons.dark_mode))
        ]),
      ),
    );
  }
}
