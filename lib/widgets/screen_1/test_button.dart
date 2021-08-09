import 'package:aod_space_task/constants/colors.dart';
import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  const TestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Button(
      text: "TEST BUTTON",
      onTap: () {
        print("TEST BUTTON TAPPED");
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: 140.0,
          height: 44.0,
          decoration: BoxDecoration(
            color: ProjectColor.testBtnBgColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: ProjectColor.white,
            ),
          ),
        ),
      );
}
