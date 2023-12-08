import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {

  bool _crossFadeStateShowFirst = true;

  void crossFade(){
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCrossFade(
              crossFadeState: _crossFadeStateShowFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
              duration: const Duration(milliseconds: 500),
              sizeCurve: Curves.bounceOut,
              firstChild: Container(
                alignment: Alignment.center,
                color: Colors.brown,
                height: 100.0,
                width: 100.0,
                ),
              secondChild: Container(
                color: Colors.orangeAccent,
                height: 200.0,
                width: 200.0,
                alignment: Alignment.center,
              ),
            ),
            Positioned.fill(
              child: TextButton(
                onPressed: () {
                  crossFade();
                },
                child: const Text('Tap to \n fade color & size'),
              ),
              ),
          ],
        ),
      ],
    );
  }
}