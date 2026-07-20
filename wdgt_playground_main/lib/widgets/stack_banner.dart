import 'package:flutter/material.dart';

/// Contoh penggunaan Stack — banner promo dengan badge di atasnya.
class StackBanner extends StatelessWidget {
  const StackBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo.shade400, Colors.indigo.shade700],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Promo Spesial Hari Ini',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('NEW', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}
