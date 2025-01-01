import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/constants.dart';
import 'package:muslim/views/widgets/azkar_widgets/azkar_item.dart';
import 'package:share_plus/share_plus.dart';

class AzkarListview extends StatefulWidget {
  const AzkarListview({super.key});

  @override
  State<AzkarListview> createState() => _AzkarListviewState();
}

class _AzkarListviewState extends State<AzkarListview> {
  void decreaseCount(int index) {
    setState(() {
      if (index >= 0 && index < countText.length) {
        if (countText[index] > 0) {
          countText[index] -= 1;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "لقد انتهيت منه بالفعل",
              textAlign: TextAlign.right,
            ),
            backgroundColor: Colors.green,
          ));
        }
      } else {
        print("Index out of range");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: description.length,
          itemBuilder: (context, index) {
            int number = index + 1;
            return AzkarItem(
              text: zikr[index],
              no: number.toString(),
              onTap: () {
                decreaseCount(index);
              },
              count: countText[index],
              description: description[index],
              onPressed: () {
                Share.share(zikr[index]);
              },
              onPressedToCopy: () {
                Clipboard.setData(ClipboardData(text: zikr[index])).then((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم النسخ',
                        textAlign: TextAlign.right,
                      ),
                    ),
                  );
                });
              },
            );
          }),
    );
  }
}
