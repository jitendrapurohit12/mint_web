import 'package:flutter/material.dart';
import 'package:mint_web/model/feature_model.dart';
import 'package:mint_web/styles/text_styles.dart';

class Feature2 extends StatelessWidget {
  final FeatureModel model;

  const Feature2({Key key, this.model}) : super(key: key);
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
                Image.asset(
                  model.image,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  model.description,
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
