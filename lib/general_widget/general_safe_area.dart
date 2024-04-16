import 'package:flutter/material.dart';

class GenericSafeArea extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const GenericSafeArea({
    super.key,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color ?? Colors.white,
      child: SafeArea(
        child: child ?? const SizedBox.expand(),
      ),
    );
  }
}
