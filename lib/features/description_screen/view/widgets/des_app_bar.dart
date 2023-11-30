import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesAppBar extends StatelessWidget {
  const DesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.heart)),
      ],
    );
  }
}
