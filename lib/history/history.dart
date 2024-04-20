import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


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
            'รายละเอียด',
            style: TextStyle(
              color: Colors.white, // กำหนดสีของข้อความเป็นสีขาว
              fontSize: 32, // กำหนดขนาดตัวอักษรเป็น 32
            ),
          ),
          centerTitle: true, // จัดวางข้อความตรงกลาง
        ),
        body: Stack(
          children: [
            // สี่เหลี่ยมสีเหลือง
            // Container for the rectangle
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 680, // Height of the yellow rectangle
                width: 412, // Width of the yellow rectangle
                decoration: BoxDecoration(
                  color: Color(0xFFFCDA78), // Yellow color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), // Top-left corner radius
                    topRight: Radius.circular(30), // Top-right corner radius
                  ),
                ),
              ),
            ),

            // First rectangle (263x228)
            Positioned(
              top: 132,
              left: (412 - 263) / 2, // Centered horizontally
              child: Container(
                height: 228, // Height of the first rectangle
                width: 263, // Width of the first rectangle
                decoration: BoxDecoration(
                  color: Colors.white, // Color of the first rectangle
                  borderRadius: BorderRadius.circular(30), // Corner radius of the first rectangle
                ),
              ),
            ),

            // Second rectangle (331x200)
            Positioned(
              top: 400,
              left: (412 - 331) / 2, // Centered horizontally
              child: Container(
                height: 200, // Height of the second rectangle
                width: 331, // Width of the second rectangle
                decoration: BoxDecoration(
                  color: Colors.white, // Color of the second rectangle
                  borderRadius: BorderRadius.circular(30), // Corner radius of the second rectangle
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
