import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_task/core/errors/failure.dart';
import 'package:movies_task/features/characters_screen/data/get_Characters_repoImp.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';
import 'package:movies_task/features/characters_screen/manager/characters_state.dart';

class CharactersCubit extends Cubit<CharacterState>{
  CharactersCubit(this.charactersRepoImp):super(const CharacterInitial());
  CharactersRepoImp charactersRepoImp;

  Future<void> getCharacters()async{
    emit(const CharacterLoading());
    Either<Failure, List<Character>> res = await charactersRepoImp.getCharacters();
    res.fold((failure) {
      emit(CharacterFailure(errorMessage: failure.errorMessage));
    }, (characters) {
     emit(CharacterSuccess(list: characters));
    });

  }

}
