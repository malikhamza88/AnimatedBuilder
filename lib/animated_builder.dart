import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuiderExample extends StatefulWidget {
  @override
  _AnimatedBuiderExampleState createState() => _AnimatedBuiderExampleState();
}

class _AnimatedBuiderExampleState extends State<AnimatedBuiderExample>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.indigo,
          child: AnimatedBuilder(
            animation: _animationController,
            child: Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
            ),
            builder: (context, child) => Transform.rotate(
                angle: _animationController.value * 3.0 * math.pi,
                child: child,
            ),
          ),
        ),
      ),
    );
  }
}
