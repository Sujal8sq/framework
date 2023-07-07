import 'package:flutter/material.dart';
import 'package:patrol/patrol.dart';
import 'package:framework/main.dart';

void main() {
  patrolTest('Signup button click test',
      nativeAutomation: false,
 (PatrolTester $) async {
    await $.pumpWidgetAndSettle(test());
    await Future.delayed(const Duration(seconds: 2));
    debugPrint("Your code was here!");
  });
}
