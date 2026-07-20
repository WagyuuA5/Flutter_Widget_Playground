import 'package:flutter/material.dart';

/// Contoh ListView.builder dengan dismissible item.
class ListSection extends StatelessWidget {
  final List<String> items;
  final Function(int) onRemoveItem;

  const ListSection({
    super.key,
    required this.items,
    required this.onRemoveItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(items[index]),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (_) => onRemoveItem(index),
          child: Card(
            margin: EdgeInsets.zero,
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.inventory_2_outlined)),
              title: Text(items[index]),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        );
      },
    );
  }
}
