import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final Color color;
  final String label;

  const BorderButton({Key key, this.color, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 48),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: color),
      ),
    );
  }
}
