import 'package:flutter/material.dart';

class RedShadowContainer extends StatelessWidget {
  const RedShadowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.red.shade400
              ])),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
