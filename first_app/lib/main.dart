import 'package:flutter/material.dart';
// import 'package:first_app/gradient_container.dart';
import 'gradient_container.dart';

//การมี void เพื่อเป็นการบอกว่า จะไม่มีการ return value
void main() {
  // จำเป็นต้องใส่ parameter ใน runApp เพราะ runApp() จะบอก flutter ว่าจะแสดงอะไรบนหน้าจอ
  // ซึ่งค่า input ที่ต้องการ คือเนื้อหาที่ควรแสดงบนหน้าจอ
  // MaterialApp() คือ Widget
  // ใน Parameter ของ MaterialApp() คือ ที่เกี่ยวข้องกับการกำหนดสิ่งที่ควรแสดงภายใน UI ของแอป
  // { } มีไว้เพื่อมัดรวม Parameter
  // กด crtl + space เพื่อต้องการ Suggestions
  // By default, positional parameters are required and must not be omitted - on the other hand, named arguments are optional and can be omitted.
  // runApp() = function, home = parameter/argument ซึ่งจะเป็นสิ่งที่ควบคู่มากับ widget/function constructor/class -> home: Scaffold() , MaterailApp() Scaffold() Center() Text() = widget/function constructor/class
  // Widget = Object = Data Structure in Memory
  // widget Container ไม่ควรใส่ const
  // การกำหนด const  มีไว้เพื่อสำหรับใช้จาก Memory ซ้ำได้
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(64, 196, 255, 1),
          Color.fromARGB(255, 23, 68, 90),
        ),
      ),
    ),
  );
}
