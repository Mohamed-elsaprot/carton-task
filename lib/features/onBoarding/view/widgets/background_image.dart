import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(AppImages.bigHero,fit: BoxFit.cover,),
    );
  }
}
