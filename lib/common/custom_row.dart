import 'package:flutter/material.dart';
import 'package:mint_web/common/border_button.dart';
import 'package:mint_web/model/feature_model.dart';
import 'package:mint_web/styles/text_styles.dart';

class CustomRowUI extends StatelessWidget {
  final FeatureModel model;
  final int index;

  const CustomRowUI({Key key, this.model, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(model.image))),
      child: Row(children: [
        index % 2 == 0 ? Expanded(child: Container()) : Container(),
        SizedBox(
          width: 204,
        ),
        Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title,
                  style: Theme.of(context).textTheme.display2.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text(model.description, style: descriptionStyle),
              SizedBox(height: 16),
              for (int i = 0; i < model.bullets.length; i++)
                Text('>  ${model.bullets[i]}', style: descriptionStyle),
              SizedBox(height: 24),
              BorderButton(color: Colors.cyan, label: model.buttonText)
            ]),
        index % 2 != 0 ? Expanded(child: Container()) : Container(),
        SizedBox(
          width: 204,
        ),
      ]),
    );
  }
}
