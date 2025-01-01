import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppImage extends StatelessWidget {
  const CustomAppImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image(
            image: AssetImage("assets/images/quran2.jpg"),
          ),
        ),
      ),
      Container(
        height: 210,
        margin: EdgeInsets.symmetric(horizontal: 10),
        //padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 20,
                children: [
                  Text(
                    "خيركم من تعلم القرآن وعلمه",
                    style: GoogleFonts.amiri(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      "The best of you are those who study Qur'an and teach it.",
                      style: GoogleFonts.amiriQuran(
                          color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Image(
              image: ResizeImage(AssetImage("assets/images/man.png"),
                  width: 175, height: 175),
            )
          ],
        ),
      )
    ]);
  }
}
