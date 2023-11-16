import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

// Statefulwidget ใช้ เมื่อมีค่าข้อมูลบางอย่างที่สามารถเปลี่ยนแปลงข้างในได้และส่งผลกระทบต่อ UI ที่เรนเดอร์ อย่างรูปภาพของลูกเต๋าที่เราต้องการแสดงบนหน้าจอ เพราะมีกาเรปลี่ยน state ของลูกเต๋า
// เมื่อข้อมูลเปลี่ยน และส่งผลกระทบต่อ ui ด้วยใช้ Statefulwidget
class GradientContainer extends StatelessWidget {
  //function constructor เริ่มต้น ซึ่งเป็นสิ่งที่ควรมี เมื่อเราทำการสร้าง class
  const GradientContainer(this.color1, this.color2, {super.key});

  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // Column() คือ widget ที่เพิ่มมาเพื่อต้องการแสดงรูปแบบ collumn แบบหลายๆตัวเรียงลงมาเป็นแนวตั้ง
        child: DiceRoller(),
      ),
    );
  }
}

// // class create object by called name of class
// class GradientContainer extends StatelessWidget {
//   // super() refer to the parent class (e.g. StatelessWidget)
//   // This is call a function constructor of parent class
//   // GradientContainer({key}) : super(key: key);
//   // "required" ใช้สำหรับ argument name ซึ่งสามารถสังเกตุได้จาก {}
//   const GradientContainer({super.key, required this.colors});
//   // Widget คือ Data type ที่เราจะส่งค่า return เป็น object ของ class นี้
//   // build เป็น function/method
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           // colors: [Colors.lightBlueAccent, Color.fromARGB(255, 23, 68, 90)],
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyleText('Hello Mink'),
//       ),
//     );
//   }
// }
