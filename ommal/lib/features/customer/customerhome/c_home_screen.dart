import 'package:flutter/material.dart';
import 'package:ommal/features/customer/customerhome/home%20components/welcome_section.dart';
import 'package:ommal/features/customer/customerhome/home%20components/searchbar.dart';
import 'package:ommal/l10n/app_localizations.dart';

class CHomeScreen extends StatelessWidget {
  const CHomeScreen({super.key});

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
                Searchbar(hint: AppLocalizations.of(context)!.homesearchhintC),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
