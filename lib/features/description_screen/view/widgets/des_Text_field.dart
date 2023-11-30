import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/styles.dart';

class DesTextField extends StatelessWidget {
  const DesTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: CupertinoSearchTextField(
        decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(30.r)
        ),
        prefixIcon: const Icon(CupertinoIcons.search,color: AppColors.white,),
        placeholder: AppTexts.searchYrFavCarton,
        placeholderStyle: const TextStyle(color: AppColors.white),
        padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
      ),
    );
  }
}
