import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/logIn/log_in_screen.dart';
import 'package:ommal/l10n/app_localizations.dart';

class AuthSucessScreen extends StatelessWidget {
  const AuthSucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.forget,
          style: const TextStyle(fontFamily: 'cairo'),
        ),
      ),
      body: SafeArea(
        //SingleChildScrollView to prevent overflow
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            //form
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(56)),
                  ),
                  child: const Icon(Icons.check, size: 40),
                ),
                const Text(
                  "تم بنجاح!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "تم تحديث كلمة المرور، تقدر تسجل الدخول دلوقتي وتستخدم كل خدمات صنعة بأمان وسهولة",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: SizedBox(
          height: 130,
          child: Column(
            spacing: 16,
            children: [
              PrimaryButton(
                btntext: 'تسجيل الدخول',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const LogInScreen(),
                    ),
                  );
                },
              ),
              const Text(
                "صنعة",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                "كل خدمة في بيتك أسهل",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF737373),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
