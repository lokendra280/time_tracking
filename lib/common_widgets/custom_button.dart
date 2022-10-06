import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  const CustomRaisedButton(
      {super.key,
      required this.color,
      this.borderRadius: 2.0,
      this.height: 50.0,
      required this.onPressed,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            (color),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
