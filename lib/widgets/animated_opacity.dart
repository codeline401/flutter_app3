import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {

  double _opacity = 1.0;

  void animatedOpacity(){
    setState(() {
      //if the opacity is equal to 0 then change it to 0.3 otherwise to 1.0 since the current value is 0.3
      _opacity = _opacity == 1 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedOpacity(
          opacity: _opacity, 
          duration: const Duration(milliseconds: 500,),
          child: Container(
            color: Colors.pinkAccent,
            height: 100.0,
            width: 100.0,
            child: TextButton(
              onPressed: (){
                animatedOpacity();
              }, 
              child: const Text('Tap to fade'),
              ),
          ),
          )
      ],
    );
  }
}