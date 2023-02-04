/*
    ==========
    Create Model
    ==========
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class SalesModel {
  final String? id;
  final String? product;
  final String? quantity;
  final double? price;

  const SalesModel({
    this.id,
    required this.product,
    required this.quantity,
    required this.price,
  });

  toJson() {
    return {
      "Product": product,
      "Quantity": quantity,
      "Price": price,
    };
  }
  factory SalesModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return SalesModel(
      id: document.id,
        product: data["Product"],
        quantity: data["Quantity"],
        price: data["Price"]
    );
  }
}
