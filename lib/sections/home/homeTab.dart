import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('assets/1.png', height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi! I'm",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.035,
                    fontWeight: FontWeight.w300,
                    color:
                        _themeProvider.lightTheme ? bgDarkColor : bgLightColor,
                  ),
                ),
                Text(
                  "Daniyal",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color:
                        _themeProvider.lightTheme ? bgDarkColor : bgLightColor,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Kautsar",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w100,
                    color:
                        _themeProvider.lightTheme ? bgDarkColor : bgLightColor,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
