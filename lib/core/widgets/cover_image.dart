import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_task/features/characters_screen/data/models/Character.dart';


class CoverImage extends StatelessWidget {
  const CoverImage({Key? key, required this.character}) : super(key: key);
  final Character character;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
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
    );
  }
}
