import 'package:aod_space_task/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/screen_1/scroll_area.dart';
import '../widgets/screen_1/test_button.dart';
import '../widgets/screen_1/title_area.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        width: screenSize.width,
        height: screenSize.height,
        alignment: Alignment.center,
        color: ProjectColor.mainBgColor,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: screenSize.height * 0.45,
            maxHeight: screenSize.height * 0.90,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: ProjectColor.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.only(
              left: screenSize.width * 0.10,
              right: screenSize.width * 0.10,
            ),
            child: Column(
              children: [
                const TitleArea(),
                const ScrollArea(),
                Container(
                  width: screenSize.width * 0.80,
                  padding: EdgeInsets.only(top: screenSize.height * 0.04,),
                  alignment: Alignment.center,
                  child: const TestButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
