import 'package:aod_space_task/constants/colors.dart';
import 'package:aod_space_task/constants/texts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../close_button.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.18,
      decoration: BoxDecoration(
        color: ProjectColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: screenSize.width * 0.40 + 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  "Title",
                  minFontSize: 18.0,
                  maxFontSize: 35.0,
                  style: TextStyle(
                    color: ProjectColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ScreenCloseBtn(),
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.95,
            height: 74.0,
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            alignment: Alignment.center,
            child: AutoSizeText(
              text_0,
              style: TextStyle(
                color: ProjectColor.black,
              ),
              minFontSize: 15.0,
              maxFontSize: 35.0,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
