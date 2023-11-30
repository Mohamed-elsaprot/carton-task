import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_task/core/errors/failure.dart';
import 'package:movies_task/core/utils/api_service.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';
import 'get_characters_repo.dart';

class CharactersRepoImp implements CharactersRepo {
  @override
  Future<Either<Failure, List<Character>>> getCharacters() async {
    List<Character> charactersList = [];
    try {
      Map<String, dynamic> res = await ApiService.getData(endPoint: ApiService.characters);
      res['results'].forEach((element) {
        charactersList.add(Character.fromJson(element));
      });
      return right(charactersList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(Failure(e.toString()));
      }
    }
  }
}
