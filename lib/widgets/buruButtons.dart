import 'package:flutter/material.dart';

class BuruButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isOpacity;

  BuruButton({
    @required this.text,
    this.onTap,
    this.isOpacity = true
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: isOpacity ? 1 : 0.5,
        child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10), //border corner radius
                boxShadow:[
                  BoxShadow(
                      offset: Offset(0.0, 12.0),
                      blurRadius: 40.0,
                      color: Color.fromARGB(53, 84, 209, 0)
                  )
                ]
            ),
            child: Center(
                child: Text(
                    text,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white
                    )
                )
            )
        )
      )
  );
}