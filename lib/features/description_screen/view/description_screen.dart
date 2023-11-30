import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/app_texts.dart';
import 'package:movies_task/core/utils/styles.dart';
import 'package:movies_task/core/widgets/cover_image.dart';
import 'package:movies_task/core/widgets/colored_container.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';
import 'package:movies_task/features/description_screen/view/widgets/des_Text_field.dart';
import 'package:movies_task/features/description_screen/view/widgets/des_app_bar.dart';
import 'package:movies_task/features/description_screen/view/widgets/description_text.dart';
import 'package:movies_task/features/description_screen/view/widgets/watch_now_button.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key, required this.character}) : super(key: key);
  final Character character;
  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        scaffold: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 10),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DesAppBar(),
                    SizedBox(height: 10.h,),
                    const DesTextField(),
                    SizedBox(height: 50.h,),
                    Style.boldText(text: AppTexts.topCategory),
                    SizedBox(height: 20.h,),
                    Center(child: CoverImage(character: character,)),
                    SizedBox(height: 20.h,),
                    Center(child: Style.boldText(text: 'THE BOSS BABY',size: 35.sp,color: Colors.black54),),
                    SizedBox(height: 20.h,),
                    Style.boldText(text: AppTexts.description,size: 25.sp,color: Colors.black54),
                    SizedBox(height: 15.h,),
                    const DescriptionText(),
                    SizedBox(height: 15.h,),
                    const WatchNowButton()
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
