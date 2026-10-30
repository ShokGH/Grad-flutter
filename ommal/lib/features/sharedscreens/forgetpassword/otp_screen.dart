import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/forgetpassword/new_password_screen.dart';
import 'package:ommal/features/sharedscreens/forgetpassword/forgetpasswordcomponents/timer.dart';
import 'package:ommal/l10n/app_localizations.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  String? _validatePassword(String? value) {
    final input = value ?? '';
    if (input.isEmpty) return 'من فضلك أدخل كلمة المرور';
    if (input.length < 6) return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    return null;
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() ?? false) {
      //add auth service here
      // ignore: unused_local_variable
      final password = _passwordController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.otp,
          style: const TextStyle(fontFamily: 'cairo'),
        ),
      ),
      body: SafeArea(
        //SingleChildScrollView to prevent overflow
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            //form
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Text(
                        "أدخل رمز التأكيد",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "بعتنا رمز مكون من 6 أرقام في رسالة نصية قصيرة إلى الرقم ٠١٠١٢٣٤٥٦٧٨ للتأكد من ملكية خطك.",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "كلمة المرور",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                    validator: _validatePassword,
                    onFieldSubmitted: (_) => _submit(),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'ادخل الرمز',
                    ),
                  ),
                  const SizedBox(height: 16),
                  CountdownTimerRow(
                    seconds: 60,
                    onResend: () {
                      // call your resend-code API here
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: PrimaryButton(
          btntext: 'تأكيد الرمز',
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const NewPasswordScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
