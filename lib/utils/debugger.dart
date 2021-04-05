import 'package:flutter/material.dart';

class Debugger extends StatelessWidget {
  Debugger({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
      child: child,
    );
  }
}
