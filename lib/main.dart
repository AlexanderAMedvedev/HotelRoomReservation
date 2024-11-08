import 'package:flutter/material.dart';
import 'package:hotels/src/di.dart';
import 'package:hotels/src/hotels_app.dart';

void main() {
  configureDependencies();
  runApp(const HotelsApp());
}
