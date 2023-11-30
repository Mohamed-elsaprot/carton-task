import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_task/features/onBoarding/view/widgets/background_image.dart';
import 'package:movies_task/features/onBoarding/view/widgets/icon.dart';
import 'package:movies_task/features/onBoarding/view/widgets/onboarding_Button.dart';
import 'package:movies_task/features/onBoarding/view/widgets/res_shadow_container.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundImage(),
        RedShadowContainer(),
        OnBoardingButton(),
        OnBoardingIcon()
      ],
    );
  }
}
