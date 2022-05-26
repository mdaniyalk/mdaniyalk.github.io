import 'package:flutter/foundation.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/customBtn.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/aboutMeMetaData.dart';
import 'package:folio/widget/communityIconBtn.dart';
import 'package:folio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTab extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          SizedBox(
            height: height * 0.03,
          ),
          Image.asset(
            'assets/mob.png',
            height: height * 0.3,
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Text(
            "I'm Muchammad Daniyal Kautsar",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.035,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? bgDarkColor : bgLightColor,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I am an undergraduate student from Universitas Gadjah Mada Information Engineer Major. I have interest in Mobile App Engineer and Machine Learning. Also, I have an interest in the creative industry, especially in the film and animation. Right now, I am an active member of Google Developer Student Club, Night Login Core Team, and other several organizations.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.02,
              color: Colors.grey[500],
              height: 2.0,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Text(
            "See my full resume at",
            style: GoogleFonts.montserrat(
                fontSize: height * 0.035,
                fontWeight: FontWeight.w400,
                color: _themeProvider.lightTheme ? bgDarkColor : bgLightColor),
          ),
          SizedBox(height: width * 0.01),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedCustomBtn(
              onPressed: () {
                html.window.open(resume, "pdf");
              },
              btnText: "Resume",
            ),
          ),
        ],
      ),
    );
  }
}
