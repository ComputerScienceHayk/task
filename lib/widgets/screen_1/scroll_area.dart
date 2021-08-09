import 'package:aod_space_task/constants/colors.dart';
import 'package:aod_space_task/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ScrollArea extends StatelessWidget {
  const ScrollArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: defaultTargetPlatform == TargetPlatform.iOS ? true : false,
      child: ConstrainedBox(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 15.0,
              top: 10.0,
            ),
            color: ProjectColor.scrollFrameBgColor,
            child: Text(
              text_1,
              style: TextStyle(
                color: ProjectColor.black,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        constraints: const BoxConstraints(
          maxHeight: 400.0,
        ),
      ),
    );
  }
}
