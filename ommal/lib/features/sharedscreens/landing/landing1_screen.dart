import 'package:flutter/material.dart';
import 'package:ommal/components/lang_changer.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/landing/landing2_screen.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/choose_lang.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/stepprogress.dart';
import 'package:ommal/l10n/app_localizations.dart';
import 'package:step_progress/step_progress.dart';

class Landing1Screen extends StatefulWidget {
  const Landing1Screen({super.key});

  @override
  State<Landing1Screen> createState() => _Landing1ScreenState();
}

class _Landing1ScreenState extends State<Landing1Screen> {
  late final StepProgressController stepProgressController;

  @override
  void initState() {
    super.initState();
    stepProgressController = StepProgressController(
      totalSteps: 3,
      initialStep: 0,
    );
  }

  @override
  void dispose() {
    stepProgressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localeProvider = LocaleScope.of(context);

    return Scaffold(
      appBar: AppBar(
        title: //progressbar
        StepprogressApp(
          stepProgressControlle: stepProgressController,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          //body
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Container(
                width: double.infinity,
                height: 424,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/landing1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //title
              Text(
                AppLocalizations.of(context)!.landin1title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              //subtitle
              Text(AppLocalizations.of(context)!.landin1subtitle),

              //button & language
              Row(
                children: [
                  SizedBox(
                    width: 155,
                    child: PrimaryButton(
                      btntext: AppLocalizations.of(context)!.landingbtn1,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const Landing2Screen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  LanguageToggle(
                    value: localeProvider.isArabic
                        ? AppLanguage.arabic
                        : AppLanguage.english,
                    onChanged: (lang) => localeProvider.setLocale(
                      lang == AppLanguage.arabic
                          ? const Locale('ar')
                          : const Locale('en'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
