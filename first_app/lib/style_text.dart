import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});

  // text นี้ ถูกตั้งค่าให้เท่ากับ argument this.text
  // final มีไว้เพื่อให้ text ตั้งค่าเพียงครั้งเดียวและไม่มีการเปลี่ยนแปลง โดยสามารถใช้ควบคู่กับ const
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 28.5, fontWeight: FontWeight.bold),
    );
  }
}
