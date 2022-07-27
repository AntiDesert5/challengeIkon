import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  final String? name;
  const Name({Key? key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: new Container(
          color: Colors.white,
          child: Center(
            child: Text(
              name!,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ));
  }
}
