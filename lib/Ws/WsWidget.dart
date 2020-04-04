//WsWidget.dart

import 'package:flutter/material.dart';
typedef typMyWidget = Widget Function(BuildContext context);

class WsWidget extends StatelessWidget {
  WsWidget({@required this.widget, Key key}) : super(key: key);
  final typMyWidget widget;
  @override
  Widget build(BuildContext context) => widget(context);
}
