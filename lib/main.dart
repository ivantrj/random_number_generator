import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';
import 'package:random_number_generator/range_selector_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}
