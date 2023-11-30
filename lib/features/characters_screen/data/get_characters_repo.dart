import 'package:dartz/dartz.dart';
import 'package:movies_task/core/errors/failure.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';

abstract class CharactersRepo{
  Future<Either<Failure,List<Character>>> getCharacters();
}
