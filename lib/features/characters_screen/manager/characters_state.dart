import '../data/models/Character.dart';

abstract class CharacterState{
  const CharacterState();
}
class CharacterInitial extends CharacterState{
  const CharacterInitial();
}
class CharacterSuccess extends CharacterState{
  const CharacterSuccess({required this.list});
  final List<Character> list;
}

class CharacterLoading extends CharacterState{
  const CharacterLoading();
}

class CharacterFailure extends CharacterState{
  const CharacterFailure({required this.errorMessage,});
  final String errorMessage;
}