import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DatePickerPage(),
    );
  }
}

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFCDA78), //  background color of the AppBar 
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('ค่าใช้จ่าย', 120, 35),
            _buildButton('รายได้/โอนเงิน ', 120, 35),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Color(0xFFF5A359),
                  child: Column(
                    children: [
                      SizedBox(height: 3),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1,
                          ),
                          itemCount: 5, //กำหนดจำนวนกล่อง icon
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSquareWithImageAndText(index);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // บันทึกข้อความ
                Positioned(
                  bottom: 0,
                  left: 1,
                  right: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCDA78),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8,
                          left: MediaQuery.of(context).size.width / 2 - 60, // คำนวณตำแหน่ง X เพื่อจัดวงกลมกลางกลาง
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9), // สีของวงกลม
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        // icon รูปกล้อง
                        Positioned(
                          top: 88, // ปรับตำแหน่งให้ไกลจากด้านบนของวงกลม
                          right: MediaQuery.of(context).size.width / 2 - 44, // ปรับตำแหน่ง X ของรูปภาพ
                          child: Image.asset(
                            'image/camera.png', // รูปภาพของกล้อง
                            width: 16,
                            height: 16,
                          ),
                        ),

                        // เพิ่มปุ่มเลือกวันที่
                        Positioned(
                          top: 84,
                          right: 44,
                          child: ElevatedButton(
                            onPressed: () => _selectDate(context),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // ทำให้มีมุมโค้ง
                              ),
                            ).copyWith(
                              backgroundColor: MaterialStateProperty.all(Color(0xFFF18585)), // สีพื้นหลังของปุ่ม
                            ),
                            child: Text(
                              'เลือกวันที่',
                              style: TextStyle(
                                color: Color.fromARGB(255, 237, 237, 237), // สีของตัวอักษร
                                fontWeight: FontWeight.bold, // ทำให้ตัวอักษรหนา
                              ),
                            ),
                          ),
                        ),

                        // เพิ่มคำว่า "note"
                        Positioned(
                          top: MediaQuery.of(context).size.height / 7.4,
                          left: 44,
                          child: Text(
                            'note',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // กล่องใส่ข้อความ
                        Positioned(
                          top: MediaQuery.of(context).size.height / 6.2,
                          left: MediaQuery.of(context).size.width / 10,
                          child: Container(
                            width: 329,
                            height: 112,
                            color: Color(0xFFD9D9D9),
                            padding: EdgeInsets.symmetric(horizontal: 20), // เพิ่มช่องว่างภายในสำหรับการป้อนข้อความ
                            child: TextFormField(
                              // ใช้ TextFormField สำหรับการป้อนข้อความ
                              maxLines: null, // อนุญาตให้ป้อนข้อมูลได้หลายบรรทัด
                              decoration: InputDecoration(
                                border: InputBorder.none, // ลบเส้นขอบ
                                hintText: 'Enter your text here', // Placeholder text
                              ),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        // เพิ่มคำว่า "จำนวนเงิน :"
                        Positioned(
                          top: MediaQuery.of(context).size.height / 3,
                          left: 38,
                          child: Text(
                            'จำนวนเงิน :',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // เพิ่มช่องใส่เลข (จำนวนเงิน)
                        Positioned(
                          top: MediaQuery.of(context).size.height / 3.1,
                          left: MediaQuery.of(context).size.width / 2 -76, // Center the container horizontally
                          child: Container(
                            width: 150,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9), // สีเส้นแบ่ง
                              borderRadius: BorderRadius.circular(50), // รัศมีโค้ง 50
                            ),
                            child: Center(
                              child: TextFormField(
                                textAlign: TextAlign.center, // Center align text input
                                keyboardType: TextInputType.number, // Set keyboard type to number
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove border
                                  hintText: '0', // Placeholder text
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // เพิ่มช่องบันทึก
                        Positioned(
                          top: MediaQuery.of(context).size.height / 3,
                          right: 40,
                          child: Container(
                            width: 80,
                            height: 29,
                            decoration: BoxDecoration(
                              color: Color(0xFFF18585), // สีเส้นแบ่ง
                              borderRadius: BorderRadius.circular(50), // รัศมีโค้ง 50
                            ),
                            child: Center(
                              child: Text(
                                'บันทึก',
                                style: TextStyle(
                                  color: Colors.white, // สีของตัวอักษร
                                  fontWeight: FontWeight.bold, // ทำให้ตัวอักษรหนา
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // toolbar
          Container(
            height: 66,
            width: 450,
            color: Color(0xFFFFF5C0), // เปลี่ยนสีเป็น FFF5C0
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildToolbarButton('image/book.png', 'Home'), // ปุ่ม Home
                _buildToolbarButton('image/wallet.png', 'Wallet'), // ปุ่ม Wallet
                _buildToolbarButton('image/analytics.png', 'Analytics'), // ปุ่ม Analytics
                _buildToolbarButton('image/logout.png', 'Logout'), // ปุ่ม Logout
              ],
            ),
          ),
        ],
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

  // Building template for square with image and text
  Widget _buildSquareWithImageAndText(int index) {
    List<String> imagePaths = [
      'image/salary.png',
      'image/bonus.png',
      'image/funds.png',
      'image/transaction.png',
      'image/money.png',
      'image/piggy-bank.png',
    ];

    List<String> texts = [
      'เงินเดือน',
      'โบนัส',
      'ลงทุน',
      'คืนเงิน',
      'เงินเข้า',
      'ออมเงิน',
    ];

    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFFCDA78),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePaths[index],
            width: 44,
            height: 44,
          ),
          SizedBox(height: 4),
          Text(
            texts[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  //app bar
  // Define the _buildButton method here
  Widget _buildButton(String text, double width, double height) {
    return ElevatedButton(
      onPressed: () {
        // Add functionality for the button here
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Set button border radius
        ),
        backgroundColor: Color(0xFFF18585), // Set the constant color
      ).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              // When pressed
              return Color.fromARGB(255, 240, 58, 58);
            }
            // Default color
            return Color(0xFFF18585);
          },
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
