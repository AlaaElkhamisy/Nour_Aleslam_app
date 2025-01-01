import 'package:flutter/material.dart';
import 'package:muslim/views/widgets/azkar_widgets/azkar_item_topSide.dart';
import 'package:muslim/views/widgets/azkar_widgets/zikr_count.dart';

class AzkarItem extends StatefulWidget {
  const AzkarItem({
    super.key,
    required this.text,
    required this.no,
    this.onTap,
    required this.count,
    required this.description,
    this.onPressed,
    this.onPressedToCopy,
  });

  final String text;
  final String no;
  final void Function()? onTap;
  final int count;
  final String description;
  final void Function()? onPressed;
  final void Function()? onPressedToCopy;
  @override
  State<AzkarItem> createState() => _AzkarItemState();
}

class _AzkarItemState extends State<AzkarItem> {
  double textSize = 20;
  void increaseTextSize() {
    setState(() {
      textSize += 2;
    });
  }

  void decreaseTextSize() {
    setState(() {
      textSize -= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          AzkarItemTopSide(
            text: widget.no,
            onPressed: widget.onPressed,
            onPressedToCopy: widget.onPressedToCopy,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.right,
                  widget.text,
                  style: TextStyle(fontSize: textSize),
                ),
                SizedBox(height: 10),
                Text(
                  widget.description,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    thickness: 2,
                    color: Colors.brown[300],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ZikrCount(
                        text: widget.count.toString(), onTap: widget.onTap),
                    Container(
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.brown.shade900, width: 2)),
                        child: Row(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  increaseTextSize();
                                },
                                icon: Icon(Icons.add_circle_outline)),
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  decreaseTextSize();
                                },
                                icon: Icon(Icons.remove_circle_outline))
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
