import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/routers.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';

import '../../../core/utils/app_texts.dart';
import '../../../core/utils/styles.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({Key? key, required this.character, required this.num}) : super(key: key);
  final Character character;
  final int num;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppRouter.router.push(AppRouter.descriptionScreen,extra: character);
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
              color: CupertinoColors.tertiarySystemFill,
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: SizedBox(
                  width: 145.w,
                  height: 175.w,
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                    errorWidget: (context, url, error) => const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline),
                        Text('No Image Found.', textAlign: TextAlign.center,),
                      ],
                    ),
                    imageUrl: character.image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(child: Center(child: Style.boldText(text: AppTexts.episodeNo + num.toString())))
            ],
          )),
    );
  }
}
