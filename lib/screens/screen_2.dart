import 'package:aod_space_task/constants/colors.dart';
import 'package:aod_space_task/providers/vertical_items.dart';
import 'package:aod_space_task/widgets/close_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/horizontal_items.dart';
import '../widgets/screen_2/horizontal_section.dart';
import '../widgets/screen_2/vertical_section.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
    child: Container(
      width: screenSize.width,
      height: screenSize.height,
      alignment: Alignment.center,
      color: ProjectColor.white,
      child: Container(
        width: screenSize.width * 0.95,
        height: screenSize.height * 0.90,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ProjectColor.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Container(
              height: 50.0,
              alignment: Alignment.centerRight,
              child: const ScreenCloseBtn(),
            ),
            Container(
                padding: EdgeInsets.only(left: 10.0),
                height: 50.0,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Section 1 (${context.read<HorizontalItemsProvider>().itemsCount.toString()})",
                  style: TextStyle(
                    color: ProjectColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const HorizontalSection(),
            Container(
                padding: EdgeInsets.only(left: 10.0),
                alignment: Alignment.centerLeft,
                height: 50.0,
                child: Text(
                  "Section 2 (${context.read<VerticalItemsProvider>().itemsCount.toString()})",
                  style: TextStyle(
                    color: ProjectColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const VerticalSection(),
          ],
        ),
      ),
    ),
  );}
}
