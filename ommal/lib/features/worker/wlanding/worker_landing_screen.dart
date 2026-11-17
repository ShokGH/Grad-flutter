import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/stepprogress.dart';
import 'package:ommal/features/sharedscreens/signUp/sign_up_screen.dart';
import 'package:ommal/l10n/app_localizations.dart';
import 'package:step_progress/step_progress.dart';

class WorkerLandingScreen extends StatefulWidget {
  const WorkerLandingScreen({super.key});

  @override
  State<WorkerLandingScreen> createState() => _WorkerLandingScreenState();
}

class _WorkerLandingScreenState extends State<WorkerLandingScreen> {
  late final StepProgressController stepProgressController;

  @override
  void initState() {
    super.initState();
    stepProgressController = StepProgressController(
      totalSteps: 3,
      initialStep: 2,
    );
  }

  @override
  void dispose() {
    stepProgressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StepprogressApp(stepProgressControlle: stepProgressController),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          //body
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  height: 380,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/workerimg.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //title
              Text(
                AppLocalizations.of(context)!.wlandingtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              //subtitle
              Text(AppLocalizations.of(context)!.wlandingsubtitle),
              PrimaryButton(
                btntext: AppLocalizations.of(context)!.landingbtn2,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          const SignUpScreen(selectedUser: 'فني'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
