import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/app_images.dart';
import 'package:movies_task/core/utils/app_texts.dart';
import 'package:movies_task/core/utils/styles.dart';
import 'package:movies_task/core/widgets/boss_baby.dart';
import 'package:movies_task/core/widgets/colored_container.dart';
import 'package:movies_task/core/widgets/app_bar.dart';
import 'package:movies_task/core/widgets/cover_image.dart';
import 'package:movies_task/features/characters_screen/view/widgets/characters_list.dart';
import 'package:movies_task/features/characters_screen/view/widgets/characters_search_text_field.dart';
import 'package:movies_task/features/characters_screen/view/widgets/stars.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
      scaffold: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const CharactersAppBar(),
                  SizedBox(height: 15.h,),
                  const Stars(),
                  BossBaby(),
                  SizedBox(height: 35.h,),
                  Style.boldText(text: AppTexts.features, color: Colors.black54, size: 25),
                  SizedBox(height: 25.h,),
                  const CharactersSearchTextField(),
                  const CharactersList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
