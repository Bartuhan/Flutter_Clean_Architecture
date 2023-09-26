import 'package:flutter/material.dart';

class GradientBackGrounds extends StatelessWidget {
  const GradientBackGrounds({
    required this.image,
    required this.child,
    super.key,
  });

  final Widget child;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        // color: Colors.grey.shade200,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SafeArea(child: child),
      ),
    );
  }
}
