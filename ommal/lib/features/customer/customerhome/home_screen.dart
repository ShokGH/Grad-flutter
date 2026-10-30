import 'package:flutter/material.dart';
import 'package:ommal/features/material_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Primary', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 16),
            Text('Secondary', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Secondary light',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: secondaryLightColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: strokeBorderColor),
              ),
            ),
            const SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Example input',
                hintText: 'Box fill + stroke border',
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                FilledButton(onPressed: () {}, child: const Text('Filled')),
                const SizedBox(width: 12),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                const SizedBox(width: 12),
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
