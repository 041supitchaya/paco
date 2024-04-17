import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFCDA78), // Change the background color of the AppBar to FCDA78
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
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return _buildSquareWithImageAndText(index);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCDA78),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            
// toolbar
           Container(
              height: 66,
              width: 390,
              color: Color(0xFFF5C0), // Change color to FFF5C0
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildToolbarButton('image/book.png', 'Home'), // Home button
                  _buildToolbarButton('image/wallet.png', 'Wallet'), // Wallet button
                  _buildToolbarButton('image/analytics.png', 'Analytics'), // Analytics button
                  _buildToolbarButton('image/logout.png', 'Logout'), // Logout button
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  // Building template for icon in toolbar
  Widget _buildToolbarIcon(String iconPath) {
    return Image.asset(
      iconPath,
      width: 35,
      height: 35,
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
// toolbar


  Widget _buildButton(String text, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFFF5B295), // Button color
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14, // Font size 14 for app bar
            fontWeight: FontWeight.bold, // Bold text
          ),
        ),
      ),
    );
  }

  Widget _buildSquareWithImageAndText(int index) {
    List<String> imagePaths = [
      'image/oil.png',
      'image/food.png',
      'image/shopping.png',
      'image/home.png',
      'image/fashion.png',
      'image/giftbox.png',
      'image/cheers.png',
      'image/actress.png',
      'image/guarantee.png',
      'image/luggage.png',
      'image/dog.png',
      'image/mortarboard.png',
    ];

    List<String> texts = [
      'น้ำมัน',
      'อาหาร',
      'ช็อปปิ้ง',
      'ที่อยู่อาศัย',
      'เสื้อผ้า',
      'ของขวัญ',
      'สังสรรค์',
      'เสริมสวย',
      'ประกัน',
      'ท่องเที่ยว',
      'สัตว์เลี้ยง',
      'การศึกษา',
    ];

    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFFCDA78),
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePaths[index],
            width: 50,
            height: 50,
          ),
          SizedBox(height:4),
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

