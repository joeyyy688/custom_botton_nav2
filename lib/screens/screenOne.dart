// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Screen One'),
      ),
    );
  }
}
