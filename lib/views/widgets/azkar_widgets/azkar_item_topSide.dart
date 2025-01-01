import 'package:flutter/material.dart';

class AzkarItemTopSide extends StatelessWidget {
  const AzkarItemTopSide({
    super.key,
    required this.text,
    this.onPressed,
    this.onPressedToCopy,
  });
  final String text;
  final void Function()? onPressed;
  final void Function()? onPressedToCopy;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        color: Colors.blue[50],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.brown[300],
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: onPressedToCopy,
                  icon: Icon(
                    Icons.copy,
                    color: Colors.brown[300],
                  )),
              IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.share,
                    color: Colors.brown[300],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
