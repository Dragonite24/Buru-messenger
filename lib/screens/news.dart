import 'package:flutter/material.dart';

import '../myColors.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Clr.main,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 200; i++) Text('$i'),
          ],
        ),
      ),
    );
  }
}
