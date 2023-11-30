import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/routers.dart';
import '../../../../core/utils/styles.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 40.h,
        right: 100.w,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red,
              padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 40.w),
              textStyle: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w900),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r))
          ),
          child: const Text(AppTexts.joinUs),
          onPressed: (){
            AppRouter.router.push(AppRouter.charactersScreen);
          },));
  }
}