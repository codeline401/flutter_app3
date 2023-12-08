import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  double _height = 100.0;
  double _width = 150.0;
  
  increaseWidth(){
    setState(() {
      _width = _width >= 320.0 ? 150.0 : _width += 50.0;
    });
  }

  increaseHeight(){
    setState(() {
      _height = _height > 350.0 ? 120.0 : _height += 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          color: Colors.amber,
          height: _height,
          width: _width,
          child: TextButton(
            onPressed: () {
              increaseHeight(); //on augmente en même temps la hauteur et la largeur
              increaseWidth();
            }, 
            child: Text('Tap to\nGrow Width\n$_width'),
            ),
        )
      ],
    );
  }
}