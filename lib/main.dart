import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mint_web/basic_scaffold.dart';
import 'package:mint_web/common/custom_row.dart';
import 'package:mint_web/common/features.dart';
import 'package:mint_web/common/features2.dart';
import 'package:mint_web/model/feature_model.dart';
import 'package:mint_web/styles/constant.dart';
import 'package:mint_web/styles/text_styles.dart';

void main() => runApp(MintWebApp());

class MintWebApp extends StatefulWidget {
  @override
  _MintWebAppState createState() => _MintWebAppState();
}

class _MintWebAppState extends State<MintWebApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mint Web App',
      home: MintHome(),
    );
  }
}

class MintHome extends StatefulWidget {
  @override
  _MintHomeState createState() => _MintHomeState();
}

class _MintHomeState extends State<MintHome> {
  StreamController<String> _controller;

  @override
  void initState() {
    super.initState();

    _controller = StreamController();
  }

  @override
  void dispose() {
    super.dispose();

    _controller?.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(102),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 700,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(mintXL))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 102.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('It\’s all coming\ntogether',
                                    style: titleLargeStyle(context)),
                                SizedBox(height: 16),
                                Text(
                                    'When you\’re on top of your money, life is good. We help you\neffortlessly manage your finances in one place.',
                                    style: descriptionStyle),
                                SizedBox(height: 16),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                  elevation: 0,
                                  onPressed: () {},
                                  color: Colors.orange,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 12),
                                    child: Text('Sign Up Free',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Row(children: [
                    SizedBox(width: 150),
                    for (int i = 0; i < featureModelList1.length; i++)
                      Feature(model: featureModelList1[i]),
                    SizedBox(width: 150)
                  ]),
                  for (int i = 0; i < featureModelList2.length; i++)
                    CustomRowUI(
                      model: featureModelList2[i],
                      index: i,
                    ),
                  SizedBox(height: 56),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Intuitive features, powerful results',
                      style: titleLargeStyle(context),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Mint is versatile enough to help anyone’s money make sense without much effort. There’s no wrong way to use it, and nothing to lose getting\nstarted. You’ll be surprised how life-changing something so simple can be.',
                      style: descriptionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 56),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 150),
                      for (int i = 0; i < featureModelList3.length; i++)
                        Feature2(model: featureModelList3[i]),
                      SizedBox(width: 150),
                    ],
                  ),
                  SizedBox(height: 102),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
