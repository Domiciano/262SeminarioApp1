import 'package:flutter/material.dart';

/// Bordered card that shows a single profile statistic.
class StatCard extends StatelessWidget {
  final String value;
  final String label;

  StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Color(0xFFEEF0FD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Color(0xFFA9B1F0), width: 1.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 6,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B1B2A),
              ),
            ),
            Text(
              label,
              style: TextStyle(fontSize: 13, color: Color(0xFF5B5E72)),
            ),
          ],
        ),
      ),
    );
  }
}
