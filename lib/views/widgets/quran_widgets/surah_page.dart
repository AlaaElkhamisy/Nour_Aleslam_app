import 'package:flutter/material.dart';
import 'package:muslim/views/widgets/custom_widgets/custom_app_bar.dart';
import 'package:muslim/views/widgets/custom_widgets/custom_surah_info.dart';
import 'package:muslim/views/widgets/quran_widgets/verses_list_view.dart';
import 'package:quran/quran.dart' as quran;

class SurahPage extends StatelessWidget {
  const SurahPage({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    spacing: 10,
                    children: [
                      CustomAppBar(
                        surahName: quran.getSurahName(surahNumber),
                      ),
                      CustomSurahInfo(
                        surahNameAr: quran.getSurahNameArabic(surahNumber),
                        surahPlace: quran.getPlaceOfRevelation(surahNumber),
                        totalAyahs: quran.getVerseCount(surahNumber),
                        basmala: quran.basmala,
                        surahNumber: surahNumber,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SliverToBoxAdapter(
                  child: VersesListView(
                    surahNumber: surahNumber,
                  ),
                )
              ],
            ),
            // child: Column(
            //   spacing: 10,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     CustomAppBar(
            //       surahName: quran.getSurahName(surahNumber),
            //     ),
            //     CustomSurahInfo(
            //       surahNameAr: quran.getSurahNameArabic(surahNumber),
            //       surahPlace: quran.getPlaceOfRevelation(surahNumber),
            //       totalAyahs: quran.getVerseCount(surahNumber),
            //       basmala: quran.basmala,
            //       surahNumber: surahNumber,
            //     ),
            //     VersesListView(
            //       surahNumber: surahNumber,
            //     )
            //   ],
            // ),
          ),
        ));
  }
}
