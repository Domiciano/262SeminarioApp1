import 'package:flutter/material.dart';

/// Centered header with the main data of a profile.
class ProfileInfo extends StatelessWidget {
  final String image;
  final String name;
  final String username;
  final String role;
  final String email;
  final String location;

  ProfileInfo({
    required this.image,
    required this.name,
    required this.username,
    required this.role,
    required this.email,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        CircleAvatar(radius: 32, backgroundImage: NetworkImage(image)),
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1B1B2A),
          ),
        ),
        Text(
          '@$username • $role',
          style: TextStyle(fontSize: 14, color: Color(0xFF5B5E72)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 24,
          children: [
            Row(
              spacing: 6,
              children: [
                Icon(Icons.mail_outline, size: 18, color: Color(0xFF3A3D52)),
                Text(
                  email,
                  style: TextStyle(fontSize: 14, color: Color(0xFF3A3D52)),
                ),
              ],
            ),
            Row(
              spacing: 6,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 18,
                  color: Color(0xFF3A3D52),
                ),
                Text(
                  location,
                  style: TextStyle(fontSize: 14, color: Color(0xFF3A3D52)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
