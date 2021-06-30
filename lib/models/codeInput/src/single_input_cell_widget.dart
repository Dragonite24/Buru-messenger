import 'package:flutter/material.dart';
import 'package:messenger/widgets/constants.dart';
import 'custom_cursor_widget.dart';

class SingleCellWidget extends StatefulWidget {
  final String text;
  final bool isFocusedUnderline;
  final bool isShowCursor;

  SingleCellWidget({
    this.text = "",
    this.isFocusedUnderline = false,
    this.isShowCursor = false,
  });

  @override
  State<StatefulWidget> createState() => _SingleCellWidgetState();
}

class _SingleCellWidgetState extends State<SingleCellWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
            width: 63,
            height: 67,
            decoration: BoxDecoration(
              color: Color(0xFF3A3D45),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Center(
              child: Text(
                widget.text.toString(),
                style: TextStyle(fontSize: 36, color: Colors.grey),
              ),
            )),
        widget.isShowCursor ? CustomCursorWidget() : Container()
      ],
    );
  }
}
