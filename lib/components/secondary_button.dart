import 'package:flutter/material.dart';

/// Outlined button for the alternative action of a screen.
class SecondaryButton extends StatelessWidget {
  final String label;
  final IconData icon;

  SecondaryButton({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 52,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF4A94EC),
          side: BorderSide(color: Color(0xFF4A94EC), width: 2),
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
