import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  //
  @override
  void initState() {
    super.initState();

    // CALL THE CLOSE FUNCTION WHEN AlertWidget OPEN
    close();
  }

  //
  void close() {
    // It will start the countdown when AlertWidget opens and close after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      alignment: Alignment.bottomCenter,
      content: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("product added to favorites"),
        ],
      ),
    );
  }
}
