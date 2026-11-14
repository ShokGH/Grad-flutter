import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/forgetpassword/auth_sucess_screen.dart';
import 'package:ommal/l10n/app_localizations.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;

  String? _validatePassword(String? value) {
    final input = value ?? '';
    if (input.isEmpty) return 'من فضلك أدخل كلمة المرور';
    if (input.length < 6) return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    final input = value ?? '';
    if (input.isEmpty) return 'من فضلك أكد كلمة المرور';
    if (input != _passwordController.text) return 'كلمتا المرور غير متطابقتين';
    return null;
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() ?? false) {
      //add auth service here
      // ignore: unused_local_variable
      final password = _passwordController.text;

      //navigator
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(builder: (context) => const AuthSucessScreen()),
      );
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
                        "كلمة مرور جديدة",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "اختار كلمة مرور قوية وسهلة تفتكرها",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  //password
                  const Text(
                    "كلمة المرور الجديدة",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                    validator: _validatePassword,
                    obscureText: _obscurePassword,
                    onFieldSubmitted: (_) => _submit(),
                    onChanged: (_) {
                      if (_confirmPasswordController.text.isNotEmpty) {
                        _formKey.currentState?.validate();
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () => setState(
                          () => _obscurePassword = !_obscurePassword,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'أدخل كلمة المرور الجديدة',
                    ),
                  ),
                  //confirm password
                  const Text(
                    "تأكيد كلمة المرور",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _confirmPasswordController,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                    validator: _validateConfirmPassword,
                    obscureText: _obscurePassword,
                    onFieldSubmitted: (_) => _submit(),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () => setState(
                          () => _obscurePassword = !_obscurePassword,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'أعد إدخال كلمة المرور',
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      spacing: 6,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("شروط كلمة المرور:"),
                        Text(
                          "✓ لا تقل عن 8 أحرف وأرقام",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text("• تحتوي على حرف كبير واحد على الأقل"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: PrimaryButton(btntext: 'حفظ كلمة المرور', onPressed: _submit),
      ),
    );
  }
}
