import 'package:flutter/material.dart';
import 'package:ommal/features/customer/clanding/customer_landing_screen.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/choose_account_type.dart';
import 'package:ommal/features/sharedscreens/landing/landingcomponents/stepprogress.dart';
import 'package:ommal/features/worker/wlanding/worker_landing_screen.dart';
import 'package:step_progress/step_progress.dart';

class Landing2Screen extends StatefulWidget {
  const Landing2Screen({super.key});

  @override
  State<Landing2Screen> createState() => _Landing2ScreenState();
}

class _Landing2ScreenState extends State<Landing2Screen> {
  late final StepProgressController stepProgressController;

  @override
  void initState() {
    super.initState();
    stepProgressController = StepProgressController(
      totalSteps: 3,
      initialStep: 1,
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
                      image: AssetImage("assets/imgs/landing2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Text(
                "حابب تستخدم صنّعة إزاي؟",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const CustomerLandingScreen(),
                    ),
                  );
                },
                child: const ChooseAccountType(
                  title: 'ابحث عن صنايعي',
                  subtitle:
                      'سباكة، كهرباء، صيانة مكيفات، نجارة، دهان، صيانة أجهزة منزلية، نقل أثاث، وغيرها.',
                  icon: Icon(Icons.work),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const WorkerLandingScreen(),
                    ),
                  );
                },
                child: const ChooseAccountType(
                  title: 'استكشف فرص شغل جديدة',
                  subtitle:
                      'أنشئ ملفك الشخصي، واستقبل طلبات العمل القريبة، وعزز سمعتك، واحصل على مدفوعاتك بأمان.',
                  icon: Icon(Icons.work),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
