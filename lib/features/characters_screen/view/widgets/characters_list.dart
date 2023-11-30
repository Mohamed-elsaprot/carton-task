import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/fun.dart';
import 'package:movies_task/core/utils/routers.dart';
import 'package:movies_task/features/characters_screen/manager/characters_cubit.dart';
import 'package:movies_task/features/characters_screen/manager/characters_state.dart';
import '../../../../core/utils/styles.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.white,
      ),
      child: BlocBuilder<CharactersCubit,CharacterState>(builder: (context,state){
        if(state is CharacterFailure){
          return Center(child: Text(state.errorMessage),);
        }else if(state is CharacterSuccess){
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.list.length,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: ListTile(
                  onTap: (){
                    AppRouter.router.push(AppRouter.episodesScreen,extra: state.list[index]);
                  },
                  leading: SizedBox(
                     width: 50.w,
                      child:  CachedNetworkImage(
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                        errorWidget: (context, url, error) => const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error_outline),
                            Text('No Image Found.', textAlign: TextAlign.center,),
                          ],
                        ),
                        imageUrl: state.list[index].image!,
                      ),),
                  title: Style.boldText(text: state.list[index].name??'No Name'),
                ),
              );
            },
          );
        }else{
          return loading();
        }
      }),
    );
  }
}
