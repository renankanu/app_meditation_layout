import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
