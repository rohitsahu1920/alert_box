
library custom_alert_box;

import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_family.dart';

class CustomAlertBox {
  static Future showCustomAlertBox({
    Color firstButtonColor = Colors.white,
    Color secondButtonColor = Colors.white,
    Color firstButtonTextColor = Colors.black,
    Color secondButtonTextColor = Colors.black,
    Color buttonShadowColor = Colors.black,
    bool barrierDismissible = true,
    required BuildContext context,
    required Widget headingWidget,
    required Widget descWidget,
    String firstButtonName = "Okay",
    String secondButtonName = "cancel",
    required Function() firstButtonClick,
    required Function() secondButtonClick,
  }) {
    return showDialog(
        useRootNavigator: false,
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) {
          return AlertDialog(
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                headingWidget,
                const SizedBox(
                  height: 20,
                ),
                descWidget,
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: buttonShadowColor,
                            backgroundColor: firstButtonColor,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () => firstButtonClick(),
                          child: Text(
                            textAlign: TextAlign.center,
                            firstButtonName,
                            style: FontFamily.mulishRegular(
                              12,
                              firstButtonTextColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: buttonShadowColor,
                            backgroundColor: secondButtonColor,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () => secondButtonClick(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
                            child: Text(
                              textAlign: TextAlign.center,
                              secondButtonName,
                              style: FontFamily.mulishRegular(
                                12,
                                secondButtonTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}