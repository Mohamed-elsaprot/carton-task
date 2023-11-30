import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/routers.dart';

import '../utils/styles.dart';

class CharactersAppBar extends StatelessWidget {
  const CharactersAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            AppRouter.router.pop();
          },
          child: Container(
            padding:EdgeInsets.all(6.sp),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),border: Border.all(color: AppColors.grey)),
            child: Icon(Icons.arrow_back_ios_new_rounded,size: 18.sp,color: AppColors.grey,),),
        ),
        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart,))
      ],
    );
  }
}
