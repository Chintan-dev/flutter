// // ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, unused_import
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:flutter/gestures.dart';
// import 'package:flutter_testing/login_card.dart';
// import 'package:flutter_testing/view/widgets/back_button.dart';
// import 'package:flutter_testing/view/widgets/background_screen.dart';
// import 'package:flutter_testing/view/widgets/heading_text.dart';

// class Test extends StatelessWidget {
//   final String email;
//   Test({Key? key, required this.email}) : super(key: key);
//   final _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             const BackgroundScreen(),
//             const BackButtonWidget(),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 100),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 20,
//                       horizontal: 30,
//                     ),
//                     child: MainHeading(
//                       title: "Log in",
//                     ),
//                   ),
//                   LoginCard(
//                     email: email,
//                     scaffoldKey: _scaffoldKey.currentContext,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
