import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimerRow extends StatefulWidget {
  final int seconds;
  final VoidCallback? onFinished;
  final VoidCallback? onResend;

  const CountdownTimerRow({
    super.key,
    this.seconds = 60,
    this.onFinished,
    this.onResend,
  });

  @override
  State<CountdownTimerRow> createState() => _CountdownTimerRowState();
}

class _CountdownTimerRowState extends State<CountdownTimerRow> {
  late int _remaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _remaining = widget.seconds;
    _start();
  }

  void _start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remaining <= 1) {
        timer.cancel();
        setState(() => _remaining = 0);
        widget.onFinished?.call();
      } else {
        setState(() => _remaining--);
      }
    });
  }

  void _restart() {
    setState(() => _remaining = widget.seconds);
    _start();
    widget.onResend?.call();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _formatted {
    final minutes = (_remaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final isDone = _remaining == 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.timer_outlined, size: 18, color: primary),
        const SizedBox(width: 8),
        Text(
          isDone ? 'انتهى الوقت' : 'إعادة الإرسال بعد $_formatted',
          style: const TextStyle(fontSize: 14, color: Color(0xFF737373)),
        ),
        const SizedBox(width: 8),
        TextButton(
          onPressed: isDone ? _restart : null,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'إعادة الإرسال',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isDone ? primary : const Color(0xFFDEDEDE),
            ),
          ),
        ),
      ],
    );
  }
}
