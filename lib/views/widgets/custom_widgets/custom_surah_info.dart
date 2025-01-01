import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/core/app_text_styles.dart';

class CustomSurahInfo extends StatelessWidget {
  const CustomSurahInfo({
    super.key,
    required this.surahNameAr,
    required this.surahPlace,
    required this.totalAyahs,
    required this.basmala,
    required this.surahNumber,
  });
  final String surahNameAr;
  final String surahPlace;
  final int totalAyahs;
  final String basmala;
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image(
          image: AssetImage("assets/images/quran2.jpg"),
        ),
      ),
      Container(
        height: 210,
        width: 400,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              surahNameAr,
              style: AppTextStyles.appbarTitle
                  .copyWith(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  surahPlace,
                  style: AppTextStyles.mainText.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.white,
                ),
                Text(
                  totalAyahs.toString(),
                  style: AppTextStyles.mainText.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Center(
              child: surahNumber == 1 || surahNumber == 1
                  ? Container()
                  : Text(
                      basmala,
                      style:
                          GoogleFonts.amiri(fontSize: 22, color: Colors.white),
                    ),
            ),
          ],
        ),
      )
    ]);
  }
}
