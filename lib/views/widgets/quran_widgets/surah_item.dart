import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/core/app_text_styles.dart';
import 'package:muslim/views/widgets/quran_widgets/surah_page.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.color,
    required this.surahName,
    required this.surahNumber,
    required this.totalAyahs,
    required this.surahNameAr,
  });
  final Color color;
  final String surahName;
  final int surahNumber;
  final int totalAyahs;
  final String surahNameAr;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SurahPage(surahNumber: surahNumber),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: Text(
                    surahNumber.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surahName,
                      style: AppTextStyles.mainText,
                    ),
                    Text("Ayah: $totalAyahs",
                        style: TextStyle(
                          fontSize: 18,
                        ))
                  ],
                ),
              ],
            ),
            Text(
              surahNameAr,
              style: GoogleFonts.amiri(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
