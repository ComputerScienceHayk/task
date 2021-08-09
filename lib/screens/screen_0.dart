import 'package:aod_space_task/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';
import 'screen_1.dart';
import 'screen_2.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.05,
        right: screenSize.width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _Button(
            title: 'to 1',
            onTap: () => Navigator.of(context).pushNamed(Screen1.routeName),
          ),
          _Button(
            title: 'to 2',
            onTap: () => Navigator.of(context).pushNamed(Screen2.routeName),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ProjectColor.green,
          ),
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            top: 5.0,
            bottom: 5.0,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: ProjectColor.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
