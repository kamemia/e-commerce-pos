// import 'dart:html';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class DropDown extends StatefulWidget {
//   // const DropDown({super.key});

//   @override
//   State<DropDown> createState() => _DropDownState();
// }

// class _DropDownState extends State<DropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//             stream: FirebaseFirestore.instance.collection("customers").snapshots(),
//             builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   const Text("loading");
//                 } else {
//                   List<DropdownMenuItem> customers = [];
//                   var documents;
//                   for (int i = 0; i < snapshot.data.docs.length; i++) {
//                     DocumentSnapshot snap = snapshot.data.document[i];
//                     customers.add(
//                       DropdownMenuItem(
//                         child: Text(
//                           snap.id,
//                           style: TextStyle(color: Color(0xFF11B719)),
//                         ),
//                         value: "${snap.id}",
//                       ),
//                     );
//                   }
//                 }
//               },
//       ),
//     );
//   }
// }