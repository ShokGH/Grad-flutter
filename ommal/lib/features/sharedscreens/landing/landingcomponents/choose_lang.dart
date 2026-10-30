import 'package:flutter/material.dart';

enum AppLanguage { arabic, english }

class LanguageToggle extends StatelessWidget {
  final AppLanguage value;
  final ValueChanged<AppLanguage> onChanged;

  const LanguageToggle({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF003647);
    const trackFill = Color(0xFFF9F9F9);
    const border = Color(0xFFDEDEDE);

    return Container(
      height: 40,
      width: 84,
      decoration: BoxDecoration(
        color: trackFill,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: border, width: 2),
      ),
      child: Row(
        children: [
          _segment(
            label: 'ع',
            selected: value == AppLanguage.arabic,
            isFirst: true,
            primary: primary,
            onTap: () => onChanged(AppLanguage.arabic),
          ),
          _segment(
            label: 'en',
            selected: value == AppLanguage.english,
            isFirst: false,
            primary: primary,
            onTap: () => onChanged(AppLanguage.english),
          ),
        ],
      ),
    );
  }

  Widget _segment({
    required String label,
    required bool selected,
    required bool isFirst,
    required Color primary,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? primary : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: selected ? Colors.white : primary,
            ),
          ),
        ),
      ),
    );
  }
}
