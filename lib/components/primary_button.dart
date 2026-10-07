import 'package:flutter/material.dart';

/// Filled button for the main action of a screen.
class PrimaryButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const PrimaryButton({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4A94EC),
          foregroundColor: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Icon(icon, size: 22),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
