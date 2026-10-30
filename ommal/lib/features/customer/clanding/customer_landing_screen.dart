import 'package:flutter/material.dart';
import 'package:ommal/components/primary_button.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/stepprogress.dart';
import 'package:ommal/features/sharedscreens/logIn/log_in_screen.dart';
import 'package:step_progress/step_progress.dart';

class CustomerLandingScreen extends StatefulWidget {
  const CustomerLandingScreen({super.key});

  @override
  State<CustomerLandingScreen> createState() => _CustomerLandingScreenState();
}

class _CustomerLandingScreenState extends State<CustomerLandingScreen> {
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
                      image: AssetImage("assets/imgs/customerimg.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //title
              const Text(
                "احصل على المحترف المناسب بالسعر المناسب.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //subtitle
              const Text(
                "تستخدم صنعة الذكاء الاصطناعي لمساعدتك في العثور على العامل المناسب، وفهم الأسعار العادلة، واتخاذ قرارات واثقة.",
              ),
              PrimaryButton(
                btntext: "ابدأ الآن",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const LogInScreen(),
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
