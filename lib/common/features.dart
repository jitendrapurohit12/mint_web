import 'package:flutter/material.dart';
import 'package:mint_web/model/feature_model.dart';
import 'package:mint_web/styles/text_styles.dart';

class Feature extends StatelessWidget {
  final FeatureModel model;

  const Feature({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.cyan,
              height: 8,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Image.asset(model.image, width: 56, height: 56),
                SizedBox(
                  height: 24,
                ),
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.display1.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  model.description,
                  textAlign: TextAlign.center,
                  style: descriptionStyle,
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
