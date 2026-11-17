import 'package:flutter/material.dart';
import 'package:ommal/features/material_app.dart';
import 'package:ommal/l10n/app_localizations.dart';

class WelcomeSection extends StatelessWidget {
  final String welcome;
  const WelcomeSection({super.key, required this.welcome});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            spacing: 8,
            children: [
              Text(
                welcome,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: strokeBorderColor, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on, color: secondaryColor),
                      Text(
                        AppLocalizations.of(context)!.homelocation,
                        style: const TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: strokeBorderColor, width: 1),
              ),
              child: Row(
                spacing: 8,
                children: [
                  const Icon(Icons.wallet, color: secondaryColor),
                  Text(AppLocalizations.of(context)!.homemoney),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: strokeBorderColor, width: 1),
              ),
              child: const Icon(Icons.notifications, color: secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
