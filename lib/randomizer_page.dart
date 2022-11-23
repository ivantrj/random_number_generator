import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer"),
      ),
      body: Center(
        child: Consumer<RandomizerChangeNotifier>(
          builder: ((context, notifier, child) {
            return Text(
              notifier.generatedNumber?.toString() ?? "Generate a number",
              style: const TextStyle(fontSize: 42),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
