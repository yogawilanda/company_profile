import 'package:flutter/material.dart';

final hoveringButton = ButtonStyle(
  foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Colors.black;
    return Colors.white;
  }),
);

final hoveringButtonLinks = ButtonStyle(
  foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Colors.black;

    return Colors.amber;
  }),
);
