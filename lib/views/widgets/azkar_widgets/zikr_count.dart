import 'package:flutter/material.dart';

class ZikrCount extends StatelessWidget {
  const ZikrCount({
    super.key,
    this.onTap,
    required this.text,
  });
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.brown.shade900, width: 2)),
        child: Text(
          text,
          style: TextStyle(color: Colors.brown.shade900, fontSize: 15),
        ),
      ),
    );
  }
}
