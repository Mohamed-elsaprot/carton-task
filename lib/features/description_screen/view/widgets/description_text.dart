import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils/app_texts.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      AppTexts.des,
      trimLines: 3,
      trimMode: TrimMode.Line,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18.sp,color: Colors.black87,fontWeight: FontWeight.w400),
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
      lessStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
    );
  }
}
