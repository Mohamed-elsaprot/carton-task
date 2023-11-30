import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_texts.dart';

class WatchNowButton extends StatelessWidget {
  const WatchNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton.icon(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
          backgroundColor: Colors.black54,
          textStyle: TextStyle(fontSize: 20.sp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: const BorderSide(color: Colors.blue),
          )
      ),
      icon: const Icon(CupertinoIcons.play),
      label: const Text(AppTexts.watchNow),
    ),);
  }
}
