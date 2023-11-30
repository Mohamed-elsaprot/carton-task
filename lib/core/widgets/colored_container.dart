import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({Key? key, required this.scaffold,}) : super(key: key);
  final Scaffold scaffold;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff926ae0),
                Color(0xffFACBEA),
                Color(0xffFACBEA),
                Colors.white,
                Color(0xffBFFFFF),
                Color(0xffee7c7c),

              ]
          )
      ),
      child:scaffold,
    );
  }
}
