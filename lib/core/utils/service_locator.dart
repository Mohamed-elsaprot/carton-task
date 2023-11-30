import 'package:get_it/get_it.dart';
import 'package:movies_task/features/characters_screen/data/get_Characters_repoImp.dart';

final getIt= GetIt.instance;

void setupGetItService() {
  getIt.registerSingleton<CharactersRepoImp>(CharactersRepoImp());
}