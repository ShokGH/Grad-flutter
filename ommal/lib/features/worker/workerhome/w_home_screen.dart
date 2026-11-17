import 'package:flutter/material.dart';
import 'package:ommal/features/customer/customerhome/home%20components/searchbar.dart';
import 'package:ommal/features/customer/customerhome/home%20components/welcome_section.dart';
import 'package:ommal/l10n/app_localizations.dart';

class WHomeScreen extends StatelessWidget {
  const WHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        //SingleChildScrollView to prevent overflow
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            //form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeSection(
                  welcome: AppLocalizations.of(context)!.homewelcomeW,
                ),
                const SizedBox(height: 16),
                Searchbar(hint: AppLocalizations.of(context)!.homesearchhintW),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text('Worker', style: Theme.of(context).textTheme.titleMedium),
//       const SizedBox(height: 8),
//       Container(
//         height: 48,
//         decoration: BoxDecoration(
//           color: primaryColor,
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       const SizedBox(height: 16),
//       Text('Secondary', style: Theme.of(context).textTheme.titleMedium),
//       const SizedBox(height: 8),
//       Container(
//         height: 48,
//         decoration: BoxDecoration(
//           color: secondaryColor,
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       const SizedBox(height: 16),
//       Text(
//         'Secondary light',
//         style: Theme.of(context).textTheme.titleMedium,
//       ),
//       const SizedBox(height: 8),
//       Container(
//         height: 48,
//         decoration: BoxDecoration(
//           color: secondaryLightColor,
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(color: strokeBorderColor),
//         ),
//       ),
//       const SizedBox(height: 24),
//       const TextField(
//         decoration: InputDecoration(
//           labelText: 'Example input',
//           hintText: 'Box fill + stroke border',
//         ),
//       ),
//       const SizedBox(height: 24),
//       Row(
//         children: [
//           FilledButton(onPressed: () {}, child: const Text('Filled')),
//           const SizedBox(width: 12),
//           OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
//           const SizedBox(width: 12),
//           ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
//         ],
//       ),
//     ],
//   ),
// ),