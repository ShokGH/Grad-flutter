import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String btntext;
  final VoidCallback? onPressed;
  const PrimaryButton({
    super.key,
    required this.btntext,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          btntext,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
