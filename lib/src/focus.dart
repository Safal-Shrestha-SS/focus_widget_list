// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'notifiers.dart';

class FocusWidget extends StatelessWidget {
  final List<Widget> widgetList;
  final bool blur;
  final Color blurColor;
  final double blurValue;
  final bool allBlur;
  final int index;
  const FocusWidget(
      {Key? key,
      required this.widgetList,
      required this.blur,
      this.blurColor = Colors.black,
      this.blurValue = 0.5,
      this.allBlur = true,
      this.index = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> focus = ValueNotifier(blur);
    final ValueNotifier<int> focusIndex = ValueNotifier(index);

    return ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (BuildContext context, index) {
          return Listener(
            behavior: HitTestBehavior.translucent,
            onPointerDown: (event) {
              focus.value = true;
              focusIndex.value = index;
            },
            child: ValueListenableBuilder2<bool, int>(
                first: focus,
                second: focusIndex,
                builder: (context, focusValue, indexValue, _) {
                  return Stack(
                    children: [
                      widgetList[index],
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          color: focusValue && indexValue != index
                              ? blurColor.withOpacity(blurValue)
                              : Colors.transparent,
                          child: Opacity(opacity: 0, child: widgetList[index]),
                        ),
                      )
                    ],
                  );
                }),
          );
        });
  }
}
