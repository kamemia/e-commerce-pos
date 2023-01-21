/*
    ==========
    Create Model
    ==========
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class CustomerModel {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? phoneNo;
  final String? email;
  final String? addresses;

  const CustomerModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNo,
    required this.addresses,
  });

  toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "Phone": phoneNo,
      "Email": email,
      "Address": addresses,
    };
  }

  /// Step 1 - Map customer fetched from Firebase to CustomerModel
  factory CustomerModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return CustomerModel(
      id: document.id,
        firstName: data["firstName"],
        lastName: data["lastName"],
        email: data["email"],
        phoneNo: data["phoneNo"],
        addresses: data["addresses"]
    );
  }
}
