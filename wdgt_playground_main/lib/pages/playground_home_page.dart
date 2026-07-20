import 'package:flutter/material.dart';
import '../widgets/counter_section.dart';
import '../widgets/stack_banner.dart';
import '../widgets/list_section.dart';

/// Halaman utama — StatefulWidget karena ada counter & list yang berubah.
class PlaygroundHomePage extends StatefulWidget {
  const PlaygroundHomePage({super.key});

  @override
  State<PlaygroundHomePage> createState() => _PlaygroundHomePageState();
}

class _PlaygroundHomePageState extends State<PlaygroundHomePage> {
  int _counter = 0;
  final List<String> _items = List.generate(8, (i) => 'Item ${i + 1}');

  void _increment() => setState(() => _counter++);

  void _addItem() {
    setState(() => _items.add('Item ${_items.length + 1}'));
  }

  void _removeItem(int index) {
    setState(() => _items.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Playground')),
      body: Column(
        children: [
          CounterSection(
            counter: _counter,
            onIncrement: _increment,
          ),
          const Divider(height: 1),
          const StackBanner(),
          const Divider(height: 1),
          Expanded(
            child: ListSection(
              items: _items,
              onRemoveItem: _removeItem,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        tooltip: 'Tambah item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
