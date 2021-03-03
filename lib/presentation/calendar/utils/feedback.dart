import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

void showFeedback(
    {@required BuildContext context,
    @required String message,
    Duration duration}) {
  showFlash(
      duration: duration ?? const Duration(seconds: 2),
      context: context,
      builder: (context, controller) => Flash(
            controller: controller,
            backgroundColor: Colors.black26,
            borderRadius: BorderRadius.circular(8.0),
            style: null,
            position: null,
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 20),
            enableDrag: false,
            onTap: () => controller.dismiss(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ));
}
