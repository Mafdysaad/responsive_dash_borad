import 'package:flutter/material.dart';

class Custom_background extends StatelessWidget {
  const Custom_background({super.key, this.padding, required this.child});
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
