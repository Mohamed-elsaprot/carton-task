import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_task/core/utils/routers.dart';
import 'package:movies_task/features/characters_screen/data/get_Characters_repoImp.dart';

import 'core/utils/service_locator.dart';
import 'core/utils/styles.dart';

void main() async{
  setupGetItService();
  CharactersRepoImp().getCharacters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(411.4, 683.4),
      builder: (_,child){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            iconTheme: IconThemeData(
              color: AppColors.grey,
              size: 30.sp
            )
          ),
        );
      },
    );

  }
}

