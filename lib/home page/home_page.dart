import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF5A359), // กำหนดพื้นหลังของทั้งหน้าจอเป็นสี F5A359
        appBar: AppBar(
          backgroundColor: Colors.transparent, // กำหนดสีพื้นหลังของแอปบาร์เป็นสีโปร่งใส
          elevation: 0, // กำหนดค่า elevation เป็น 0 เพื่อลบเงาของแอปบาร์
          title: Text(
            'หนังสือเริ่มต้น',
            style: TextStyle(
              color: Colors.white, // กำหนดสีของข้อความเป็นสีขาว
              fontSize: 20, // กำหนดขนาดตัวอักษรเป็น 32
            ),
          ),
        ),
        body: Stack(
          children: [
            // รูป 'book.png' และข้อความ "หนังสือเริ่มต้น"
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0), // ปรับระยะห่างจากขอบด้านบนและด้านซ้าย
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'image/book.png',
                    width: 40, // ปรับขนาดของรูป
                    height: 40, // ปรับขนาดของรูป
                  ),
                  SizedBox(height: 5), // เพิ่มระยะห่างระหว่างรูปภาพและข้อความ
                  Text(
                    'หนังสือเริ่มต้น',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // ปรับขนาดของข้อความ
                    ),
                  ),
                ],
              ),
            ),

            // สี่เหลี่ยมสีเหลือง
            // Container for the rectangle
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 680, // ความสูงของสี่เหลี่ยม
                width: 412, // ความกว้างของสี่เหลี่ยม
                decoration: BoxDecoration(
                  color: Color(0xFFFCDA78), // สี FCDA78
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), // มุมบนซ้าย
                    topRight: Radius.circular(40), // มุมบนขวา
                  ),
                ),
              ),
            ),

            // toolbar ข้างล่าง
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 66,
                width: MediaQuery.of(context).size.width, // กำหนดความกว้างเต็มหน้าจอ
                color: Color(0xFFFFF5C0), // เปลี่ยนสีเป็น FFF5C0
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildToolbarButton('image/book.png', 'Home'), // ปุ่ม Home
                    _buildToolbarButton('image/wallet.png', 'Wallet'), // ปุ่ม Wallet
                    _buildToolbarButton('image/analytics.png', 'Analytics'), // ปุ่ม Analytics
                    _buildToolbarButton('image/logout.png', 'Logout'), // ปุ่ม Logout
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Building template for toolbar button
  Widget _buildToolbarButton(String iconPath, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24), // Add horizontal padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 35,
            height: 35,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

