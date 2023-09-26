import 'package:education_app/core/common/widgets/gradients_backgrounds.dart';
import 'package:education_app/core/res/media_res.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGrounds(
        image: MediaRes.backgroundTestImage,
        child: Center(child: Lottie.asset(MediaRes.underConstLottie)),
      ),
    );
  }
}
