import 'package:flutter/material.dart';
import 'package:muslim/views/widgets/quran_widgets/surah_item.dart';
import 'package:quran/quran.dart' as quran;

class SurahListView extends StatelessWidget {
  const SurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: quran.totalSurahCount,
            itemBuilder: (context, index) {
              Color containerColor =
                  (index % 2 == 0) ? Color(0xffFFFDF0) : Colors.brown.shade200;
              int surahNumber = index + 1;
              return SurahItem(
                color: containerColor,
                surahName: quran.getSurahName(surahNumber),
                surahNumber: surahNumber,
                totalAyahs: quran.getVerseCount(surahNumber),
                surahNameAr: quran.getSurahNameArabic(surahNumber),
              );
            }),
      ),
    );
  }
}
