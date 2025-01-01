import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;
import 'package:share_plus/share_plus.dart';

class VerseItem extends StatelessWidget {
  const VerseItem({
    super.key,
    required this.verseNumber,
    required this.surahNumber,
    required this.no,
    this.onPressed,
  });
  final int verseNumber;
  final int surahNumber;
  final int no;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue[50],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.brown[300],
                    child: Text(
                      no.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            final verseText =
                                quran.getVerse(surahNumber, verseNumber);
                            final surahName =
                                quran.getSurahNameArabic(surahNumber);
                            Share.share("$verseText\n\n$surahName");
                          },
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.brown[300],
                          )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.bookmark_border,
                      //       color: Colors.brown[300],
                      //     )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    quran.getVerse(surahNumber, verseNumber),
                    style: GoogleFonts.amiriQuran(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    quran.getVerseTranslation(surahNumber, verseNumber),
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
