import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/styles.dart';

class CharactersSearchTextField extends StatelessWidget {
  const CharactersSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(
        color: CupertinoColors.tertiarySystemFill,
        borderRadius: BorderRadius.circular(10.r),
      ),
      placeholder: AppTexts.characters,
      placeholderStyle: TextStyle(color:AppColors.grey,fontWeight: FontWeight.w500,fontSize: 22.sp),
      suffix: Icon(Icons.add_circle_outline,color: AppColors.grey,size: 30.sp,),
    );
  }
}
