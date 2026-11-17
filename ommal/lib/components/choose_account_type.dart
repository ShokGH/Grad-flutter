import 'package:flutter/material.dart';
import 'package:ommal/features/material_app.dart';

class AccountCard extends StatelessWidget {
  final String user, subtitle;
  final Icon icon;
  final bool selected;
  final VoidCallback onTap;

  const AccountCard({
    super.key,
    required this.icon,
    required this.user,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected ? primaryColor : strokeBorderColor,
            width: 2,
          ),
          color: selected ? secondaryLightColor : boxFillColor,
        ),
        child: Column(
          children: [
            icon,
            Text(user, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(
              subtitle,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

class ChooseAccount extends StatelessWidget {
  final String? selectedUser;
  final ValueChanged<String?> onSelect;

  const ChooseAccount({
    super.key,
    required this.selectedUser,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AccountCard(
            subtitle: 'ابحث عن صنايعي',
            icon: const Icon(Icons.tv_off_rounded),
            user: 'عميل',
            selected: selectedUser == 'عميل',
            onTap: () => onSelect('عميل'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AccountCard(
            subtitle: 'قدم خدمة',
            icon: const Icon(Icons.construction),
            user: 'فنني',
            selected: selectedUser == 'فنني',
            onTap: () => onSelect('فنني'),
          ),
        ),
      ],
    );
  }
}
