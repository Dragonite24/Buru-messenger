import 'package:flutter/material.dart';
import 'package:messenger/widgets/constants.dart';

class BuruScaffold extends StatelessWidget {
  final Widget appBar, body;

  BuruScaffold({this.appBar, this.body, });

  @override
  Widget build(BuildContext context) => MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
    child: Scaffold(
      backgroundColor: buruMain,
      appBar: appBar,
      body: SingleChildScrollView(
        child: SafeArea(
          child: body,
        )
      )
    )
  );
}
