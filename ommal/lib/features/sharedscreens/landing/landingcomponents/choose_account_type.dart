import 'package:flutter/material.dart';

class ChooseAccountType extends StatelessWidget {
  final String title, subtitle;
  final Icon icon;
  const ChooseAccountType({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            blurRadius: 3.9,
            spreadRadius: -1.0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        children: [
          icon,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Flexible(
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
