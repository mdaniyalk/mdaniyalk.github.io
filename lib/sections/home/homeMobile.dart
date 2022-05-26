import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
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
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('assets/1.png', height: height * 0.65),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi! I'm",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.025,
                      color: _themeProvider.lightTheme
                          ? bgDarkColor
                          : bgLightColor,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "Daniyal",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055,
                      color: _themeProvider.lightTheme
                          ? bgDarkColor
                          : bgLightColor,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
                Text(
                  "Kautsar",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      color: _themeProvider.lightTheme
                          ? bgDarkColor
                          : bgLightColor,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
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
                        height: height * 0.03,
                        horizontalPadding: 2.0,
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
