import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimeLineTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final String icon;
  final Color color;
  const TimeLineTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: CircleAvatar(
        backgroundColor: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(icon, color: Colors.white),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
