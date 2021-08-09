import 'package:aod_space_task/constants/colors.dart';
import 'package:aod_space_task/utlis/fonts.dart';
import 'package:flutter/widgets.dart';

import '../screens/screen_0.dart';

class ScreenCloseBtn extends StatelessWidget {
  const ScreenCloseBtn({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return _Button(
      icon: MyTestPrj.close,
      onTap: () => Navigator.of(context).pushNamed(Screen0.routeName),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Icon(
      icon,
      color: ProjectColor.black,
      size: 40.0,
    ),
  );
}
