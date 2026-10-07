import 'package:flutter/material.dart';
import 'package:mi_app_1/components/stat_card.dart';

/// Row with the three statistics of a profile.
class StatsRow extends StatelessWidget {
  final String posts;
  final String followers;
  final String following;

  StatsRow({
    required this.posts,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        StatCard(value: posts, label: 'Publicaciones'),
        StatCard(value: followers, label: 'Seguidores'),
        StatCard(value: following, label: 'Seguidos'),
      ],
    );
  }
}
