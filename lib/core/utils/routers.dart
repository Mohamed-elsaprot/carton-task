import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:movies_task/core/utils/service_locator.dart';
import 'package:movies_task/features/characters_screen/data/get_Characters_repoImp.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';
import 'package:movies_task/features/characters_screen/manager/characters_cubit.dart';
import 'package:movies_task/features/characters_screen/view/characters_screen.dart';
import 'package:movies_task/features/description_screen/view/description_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/episodes_screen/view/episodes_screen.dart';
import '../../features/onBoarding/view/on_boarding.dart';

abstract class AppRouter {
  static const onBoarding = '/';
  static const charactersScreen = '/charactersScreen';
  static const episodesScreen = '/episodesScreen';
  static const descriptionScreen = '/descriptionScreen';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: onBoarding,
      builder: (BuildContext context, GoRouterState state) =>
          const OnBoarding(),
    ),
    GoRoute(
      path: charactersScreen,
      builder: (BuildContext context, GoRouterState state) => BlocProvider(
        create: (BuildContext context)=> CharactersCubit(getIt.get<CharactersRepoImp>())..getCharacters(),
        child: const CharactersScreen(),
      ),
    ),
    GoRoute(
      path: episodesScreen,
      builder: (BuildContext context, GoRouterState state) =>
           EpisodesScreen(character: state.extra as Character),
    ),
    GoRoute(
      path: descriptionScreen,
      builder: (BuildContext context, GoRouterState state) =>
           DescriptionScreen(character: state.extra as Character),
    ),
  ]);
}
