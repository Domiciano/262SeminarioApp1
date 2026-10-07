import 'package:flutter/material.dart';

/// Row of a chat list with avatar, name, last message and time.
class ChatItem extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;

  ChatItem({
    required this.image,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        CircleAvatar(radius: 26, backgroundImage: NetworkImage(image)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1B1B2A),
                ),
              ),
              Text(
                message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, color: Color(0xFF5B5E72)),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 6,
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 13, color: Color(0xFF5B5E72)),
            ),
            Icon(Icons.done_all, size: 18, color: Color(0xFF4A5BD4)),
          ],
        ),
      ],
    );
  }
}
