import 'package:flutter/material.dart';

TextStyle titleLargeStyle(BuildContext context) => Theme.of(context)
    .textTheme
    .display2
    .copyWith(color: Colors.black87, fontWeight: FontWeight.bold);

TextStyle descriptionStyle = TextStyle(fontSize: 18, color: Colors.black87);
