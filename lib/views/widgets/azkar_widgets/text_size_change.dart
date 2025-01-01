import 'package:flutter/material.dart';

class TextSizeChange extends StatelessWidget {
  const TextSizeChange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.brown.shade900, width: 2)),
        child: Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline)),
            IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(Icons.remove_circle_outline))
          ],
        ));
  }
}
