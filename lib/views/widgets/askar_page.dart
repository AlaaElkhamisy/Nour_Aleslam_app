import 'package:flutter/material.dart';
import 'package:muslim/constants.dart';
import 'package:muslim/views/widgets/azkar_widgets/azkar_listView.dart';
import 'package:muslim/views/widgets/custom_widgets/custom_droDown.dart';

class AskarPage extends StatefulWidget {
  const AskarPage({super.key});

  @override
  State<AskarPage> createState() => _AskarPageState();
}

class _AskarPageState extends State<AskarPage> {
  String? selectedValue;
  List<String> items = [
    "أذكار الصباح",
    "أذكار المساء",
    "أذكار بعد الصلاة",
    "تسابيح",
    "أذكار النوم",
    "أذكار الاستيقاظ",
    "أدعية قرآنية",
    "أدعية الأنبياء"
  ];

  void initState() {
    super.initState();
    updateZikr(items[0]);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomDrodown(
              text: "أذكار وأدعية",
              value: selectedValue,
              items: items,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                  if (newValue != null) {
                    updateZikr(newValue);
                  }
                });
              },
            ),
            selectedValue != null
                ? AzkarListview()
                : Padding(
                    padding: const EdgeInsets.only(top: 228),
                    child: Image(image: AssetImage("assets/images/muslim.png")),
                  ),
          ],
        ),
      ),
    );
  }
}
