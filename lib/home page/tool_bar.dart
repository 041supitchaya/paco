 
//  import 'package:flutter/material.dart';
//  // toolbar ข้างล่าง
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 height: 66,
//                 width: MediaQuery.of(context).size.width,
//                 color: Color(0xFFFFF5C0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildToolbarButton('image/book.png', 'Home'),
//                     _buildToolbarButton('image/wallet.png', 'Wallet'),
//                     _buildToolbarButton('image/analytics.png', 'Analytics'),
//                     _buildToolbarButton('image/logout.png', 'Logout'),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildToolbarButton(String iconPath, String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             iconPath,
//             width: 35,
//             height: 35,
//           ),
//           SizedBox(height: 5),
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }