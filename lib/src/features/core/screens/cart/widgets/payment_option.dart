import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String selectedRadio;
  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: firestoreInstance
              .collection('radio_buttons')
              .doc('selected_radio')
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            selectedRadio = snapshot.data!['selected_radio'];
            return Column(
              children: <Widget>[
                Radio(
                    value: 'Radio 1',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value!;
                        firestoreInstance
                            .collection('radio_buttons')
                            .doc('selected_radio')
                            .set({'selected_radio': selectedRadio});
                      });
                    }),
                Radio(
                    value: 'Radio 2',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value!;
                        firestoreInstance
                            .collection('radio_buttons')
                            .doc('selected_radio')
                            .set({'selected_radio': selectedRadio});
                      });
                    }),
              ],
            );
          }),
    );
  }
}
