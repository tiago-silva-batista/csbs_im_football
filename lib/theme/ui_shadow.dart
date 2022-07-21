import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiShadow {
  static Shadow textShadow = const Shadow(
    offset: Offset(1, 1),
    blurRadius: 3.0,
    color: Color.fromARGB(255, 0, 0, 0),
  );

  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3), // changes position of shadow
  );
}
