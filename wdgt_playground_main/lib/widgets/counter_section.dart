import 'package:flutter/material.dart';

/// Contoh Row + StatefulWidget interaction (counter).
class CounterSection extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const CounterSection({
    super.key,
    required this.counter,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Counter: $counter', style: Theme.of(context).textTheme.titleLarge),
          ElevatedButton.icon(
            onPressed: onIncrement,
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('Tambah'),
          ),
        ],
      ),
    );
  }
}
