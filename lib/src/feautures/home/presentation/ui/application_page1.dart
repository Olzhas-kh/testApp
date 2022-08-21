// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:narxoz/src/feautures/app/router/app_router.dart';
// import 'package:narxoz/src/feautures/home/presentation/widgets/application_appbar.dart';
// import 'package:narxoz/src/feautures/home/presentation/widgets/application_card.dart';

// class ApplicationPage1 extends StatefulWidget {
//   const ApplicationPage1({super.key});

//   @override
//   State<ApplicationPage1> createState() => _ApplicationPageState();
// }

// class _ApplicationPageState extends State<ApplicationPage1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar:
//       body: SafeArea(
//         child: ListView(
//           children: [
//             ApplicationAppBar(
//               onTap: () {
//                 context.router.pop();
//               },
//               text: 'Подача заявки',
//               isSafeArea: true,
//             ),
//             const SizedBox(height: 34),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Column(
//                 children: [
//                   ApplicationCard(
//                     title: 'Бакалавриат',
//                     body: 'Количество свободных мест: 203',
//                     onTap: () {
//                       context.router.push(const ApplicationPage2Route());
//                     },
//                   ),
//                   const SizedBox(height: 30),
//                   ApplicationCard(
//                     title: 'Магистратура',
//                     body: 'Количество свободных мест: 15',
//                     onTap: () {
//                       context.router.push(const ApplicationPage2Route());
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
