import 'package:flutter/material.dart';
import 'package:ch7_animations/widgets/animated_container.dart';
import 'package:ch7_animations/widgets/animated_cross_fade.dart';
import 'package:ch7_animations/widgets/animated_opacity.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //using animated Container
            AnimatedContainerWidget(),
            Divider(),
            //using animated cross fade
            AnimatedCrossFadeWidget(),
            Divider(),
            //using animated opacity
            AnimatedOpacityWidget(),
            //using Animation Controller
          ],
        ),
        ),
    );
  }
}