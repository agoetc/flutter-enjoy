import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
