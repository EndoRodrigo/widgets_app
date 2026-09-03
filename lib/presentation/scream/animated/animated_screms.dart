import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScrems extends StatefulWidget {
  static const String name = 'animated';
  const AnimatedScrems({super.key});

  @override
  State<AnimatedScrems> createState() => _AnimatedScremsState();
}

class _AnimatedScremsState extends State<AnimatedScrems> {

  double wigth = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape(){
    final random = Random();
    wigth = random.nextInt(300) + 50;
    height = random.nextInt(250) + 50;
    borderRadius = random.nextInt(100) + 10;
    
    color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animayed contrainer')),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          width: wigth,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
