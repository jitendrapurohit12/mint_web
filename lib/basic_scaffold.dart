import 'dart:async';

import 'package:flutter/material.dart';

class BasicScaffold extends StatefulWidget {
  final AppBar appbar;
  final Widget child;
  final StreamController<String> controller;

  BasicScaffold({Key key, this.appbar, this.child, this.controller})
      : super(key: key);

  @override
  _BasicScaffoldState createState() => _BasicScaffoldState();
}

class _BasicScaffoldState extends State<BasicScaffold> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    widget.controller.stream.listen((s) => showSnack(s));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: widget.appbar,
      body: widget.child,
    );
  }

  void showSnack(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
