// import 'package:flutter/material.dart';
// import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';
// import 'package:whatsapp_ui/screens/web_chat_screen.dart';
// import 'package:whatsapp_ui/screens/widgets/colors.dart';
// import 'package:whatsapp_ui/screens/widgets/info.dart';

// class WebChatContactsList extends StatelessWidget {
//   const WebChatContactsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: info.length,
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     if (MediaQuery.of(context).size.width <= 600) {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => WebChatScreen(
//                                 name: info[index]['name'].toString(),
//                                 profilePic:
//                                     info[index]['profilePic'].toString(),
//                                 message: info[index]['message'].toString(),
//                                 time: info[index]['time'].toString(),
//                               )));
//                     } else {
//                       return;
//                     }
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: ListTile(
//                       title: Text(
//                         info[index]['name'].toString(),
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       subtitle: Padding(
//                         padding: const EdgeInsets.only(top: 6),
//                         child: Text(
//                           info[index]['message'].toString(),
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       leading: LayoutBuilder(builder: (context, constraints) {
//                         double avatarRadius = constraints.maxWidth * 0.1;
//                         return CircleAvatar(
//                           radius: avatarRadius,
//                           backgroundImage: NetworkImage(
//                               info[index]['profilePic'].toString()),
//                         );
//                       }),
//                       trailing: Text(
//                         info[index]['time'].toString(),
//                         overflow: TextOverflow.ellipsis,
//                         style:
//                             const TextStyle(fontSize: 13, color: Colors.grey),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   color: dividerColor,
//                   indent: 85,
//                 )
//               ],
//             );
//           }),
//     );
//   }
// }
