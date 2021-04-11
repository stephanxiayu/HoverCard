import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Material(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 350,
            child: HoverCard(
              builder: (context, hovering) {
                return Container(
                  color: Colors.grey,
                  child: Center(child: Image.asset("lib/assets/idee.png")),
                );
              },
              depth: 10,
              depthColor: Colors.grey[500],
              shadow: BoxShadow(color: Colors.red,
              blurRadius: 40,
              spreadRadius: -15,
              offset: Offset(0,40)),
            ),
          )
        ],
      )),
    );
  }
}
