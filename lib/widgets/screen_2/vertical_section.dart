import 'package:aod_space_task/providers/vertical_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerticalSection extends StatelessWidget {
  const VerticalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    int verticalItemsCount = context.watch<VerticalItemsProvider>().itemsCount;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: screenSize.height * 0.45,
        minWidth: screenSize.width
      ),
      child: verticalItemsCount != 0
          ? ListView.builder(
          itemCount: verticalItemsCount,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(width: 0.2),
              ),
              child: Container(
                height: screenSize.height * 0.20,
                alignment: Alignment.center,
                child: Text(
                  "Vertical item ${index + 1}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          })
          : const Text("No item available"),
    );
  }
}
