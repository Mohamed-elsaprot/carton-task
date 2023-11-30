import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/app_texts.dart';
import 'package:movies_task/core/utils/styles.dart';
import 'package:movies_task/core/widgets/app_bar.dart';
import 'package:movies_task/core/widgets/cover_image.dart';
import 'package:movies_task/core/widgets/colored_container.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';
import 'package:movies_task/features/episodes_screen/view/episode_card.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key? key, required this.character}) : super(key: key);
  final Character character;
  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        scaffold: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CharactersAppBar(),
              SizedBox(height: 15.h,),
              Center(child: CoverImage(character: character)),
              SizedBox(height: 25.h,),
              Style.boldText(text: AppTexts.episodesList, fontWeight: FontWeight.w900,),
              SizedBox(height: 25.h,),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: character.episode!.length,
                  itemBuilder: (context, index) {
                    return EpisodeCard(character: character,num: index+1,);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
