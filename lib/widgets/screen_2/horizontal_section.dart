import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import '../../providers/horizontal_items.dart';

class HorizontalSection extends StatelessWidget {
  const HorizontalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    int horizontalItemsCount = context.watch<HorizontalItemsProvider>().itemsCount;

    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.20,
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: horizontalItemsCount != 0
          ? ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: horizontalItemsCount,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(width: 0.2),
                    ),
                    child: Container(
                      width: 304.8,
                      height: screenSize.height * 0.20,
                      alignment: Alignment.center,
                      child: Text(
                        "Horizontal item ${index + 1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          })
          : const Text("No item available"),
    );
  }
}
