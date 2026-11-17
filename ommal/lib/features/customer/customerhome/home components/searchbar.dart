import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  final String hint;
  const Searchbar({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            Expanded(child: Text(hint)),
            IconButton(icon: const Icon(Icons.mic), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.filter_alt_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
