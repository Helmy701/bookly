import 'package:bookly_app/bookly_app.dart';
import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setup();
  await ScreenUtil.ensureScreenSize();

  runApp(const BooklyApp());
}
