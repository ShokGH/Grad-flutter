import 'package:flutter/material.dart';
import 'package:step_progress/step_progress.dart';

class StepprogressApp extends StatelessWidget {
  final StepProgressController stepProgressControlle;
  const StepprogressApp({super.key, required this.stepProgressControlle});

  @override
  Widget build(BuildContext context) {
    return StepProgress(
      totalSteps: 3,
      controller: stepProgressControlle,
      visibilityOptions: StepProgressVisibilityOptions.lineOnly,
      highlightOptions: StepProgressHighlightOptions.highlightCompletedLines,
      onStepChanged: (currentIndex) {
        debugPrint('onStepChanged: $currentIndex');
      },
      onStepLineTapped: (index) {
        debugPrint('onStepLineTapped: $index');
      },
      theme: StepProgressThemeData(
        stepLineSpacing: 6,
        defaultForegroundColor: const Color(0xFFDEDEDE),
        activeForegroundColor: Theme.of(context).colorScheme.primary,
        stepLineStyle: const StepLineStyle(
          lineThickness: 8,
          borderRadius: Radius.circular(2),
        ),
      ),
    );
  }
}
