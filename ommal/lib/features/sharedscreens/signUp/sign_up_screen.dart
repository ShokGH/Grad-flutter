import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/logIn/log_in_screen.dart';
import 'package:ommal/l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _identifierController = TextEditingController();
  final _passwordController = TextEditingController();

  // ignore: prefer_final_fields
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _identifierController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateIdentifier(String? value) {
    final input = value?.trim() ?? '';
    if (input.isEmpty) {
      return 'من فضلك أدخل رقم الموبايل أو البريد الإلكتروني';
    }
    final isEmail = RegExp(r'^[\w\.\-]+@[\w\-]+\.[\w\.\-]+$').hasMatch(input);
    final isPhone = RegExp(r'^01[0-9]{9}$').hasMatch(input);
    if (!isEmail && !isPhone) {
      return 'أدخل بريدًا إلكترونيًا صحيحًا أو رقم موبايل يبدأ بـ 01';
    }
    return null;
  }

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
      final identifier = _identifierController.text.trim();
      // ignore: unused_local_variable
      final password = _passwordController.text;
      debugPrint('login: $identifier / remember=$_rememberMe');

      //navigator
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(builder: (context) => const LogInScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.signup,
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
              //body
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    AppLocalizations.of(context)!.createaccount,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //name
                  Text(
                    AppLocalizations.of(context)!.fullname,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _identifierController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                    validator: _validateIdentifier,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: AppLocalizations.of(context)!.fullnameex,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //phone number
                  Text(
                    AppLocalizations.of(context)!.phonenumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _identifierController,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                    validator: _validateIdentifier,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      hintText: AppLocalizations.of(context)!.phonenumberex,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //email
                  Text(
                    AppLocalizations.of(context)!.gmail,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _identifierController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                    validator: _validateIdentifier,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail),
                      hintText: AppLocalizations.of(context)!.gmailex,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //password
                  Text(
                    AppLocalizations.of(context)!.password,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                    validator: _validatePassword,
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
                      hintText: AppLocalizations.of(context)!.passwordex,
                    ),
                  ),
                  //confirm password
                  Text(
                    AppLocalizations.of(context)!.confirmpassword,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                    validator: _validatePassword,
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
                      hintText: AppLocalizations.of(context)!.passwordex,
                    ),
                  ),
                  //remember me/ forget password
                  const SizedBox(height: 16),
                  PrimaryButton(
                    btntext: AppLocalizations.of(context)!.createaccountbtn,
                    onPressed: _submit,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.alrhvaccount),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const LogInScreen(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
