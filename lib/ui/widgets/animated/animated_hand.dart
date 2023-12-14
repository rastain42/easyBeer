import 'package:flutter/material.dart';

const Duration defaultDuration = Duration(milliseconds: 350);

class AnimatedHand extends StatefulWidget {
  const AnimatedHand({
    super.key,
    this.loopCount = 3,
  });

  final int loopCount;

  @override
  State<AnimatedHand> createState() => _AnimatedHandState();
}

class _AnimatedHandState extends State<AnimatedHand>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late int loopCount;

  @override
  void initState() {
    super.initState();
    loopCount = widget.loopCount;

    _animationController = AnimationController(
      vsync: this,
      duration: defaultDuration,
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.reverse) {
          loopCount -= 1;
          if (loopCount <= 0) {
            Future<void>.delayed(defaultDuration, () {
              _animationController.forward(from: 0);
              _animationController.stop(canceled: true);
            });
          }
        }
      });

    startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void startAnimation() {
    loopCount = widget.loopCount;
    _animationController.repeat(
      min: 0,
      max: 0.5,
      reverse: true,
      period: defaultDuration,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: startAnimation,
      child: RotationTransition(
        turns: Tween<double>(
          begin: 0.0,
          end: 0.2,
        ).animate(_animationController),
        child: const Text(
          "👋",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
