import 'package:flutter/material.dart';
import 'package:muslim/views/widgets/quran_widgets/verse_item.dart';
import 'package:quran/quran.dart' as quran;

class VersesListView extends StatelessWidget {
  const VersesListView({
    super.key,
    required this.surahNumber,
  });
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    int verseCount = quran.getVerseCount(surahNumber);
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: verseCount,
        itemBuilder: (context, index) {
          int verseNumber = index + 1;
          return VerseItem(
            verseNumber: verseNumber,
            surahNumber: surahNumber,
            no: verseNumber,
          );
        });
  }
}
