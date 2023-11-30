import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingIcon extends StatelessWidget {
  const OnBoardingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45.h,
      right: 30.w,
      child: Icon(CupertinoIcons.arrow_right,size: 55.sp,color:Colors.white30),
    );
  }
}

