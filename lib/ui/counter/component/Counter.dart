import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int counter;

  const Counter({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
