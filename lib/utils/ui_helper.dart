import 'package:flutter/material.dart';

class UIHelper {
  bool _isLoading = false;
  static Future<void> displayPleaseWait(BuildContext ctx) async {
    return showDialog(
      barrierDismissible: true,
      builder: (context) {
        return WillPopScope(
            child: Center(
              child: Row(
                children: [
                  Text('Please Wait...'),
                ],
              ),
            ),
            onWillPop: () => Future.value(false));
      },
      context: ctx,
    );
  }

  void hideLoading(BuildContext context) {
    _isLoading = false;
    Navigator.of(context).pop();
  }

  static showLoaderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () {
            return Future.value(false);
          },
          child: AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const Text("Loading..."),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
