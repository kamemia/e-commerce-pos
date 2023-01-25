/*
    ==========
    Create Model
    ==========
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String? id;
  final String? title;
  final String? description;
  final String? price;
  final String? sku;
  final String? barcode;
  final String? quantity;

  const ProductModel({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.sku,
    required this.barcode,
    required this.quantity,
  });

  toJson() {
    return {
      "Title": title,
      "Description": description,
      "Price": price,
      "Sku": sku,
      "Barcode": barcode,
      "Quantity": quantity
    };
  }

  /// Step 1 - Map customer fetched from Firebase to CustomerModel
  factory ProductModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ProductModel(
        id: document.id,
        title: data["title"],
        description: data["description"],
        price: data["price"],
        sku: data["sku"],
        barcode: data["barcode"],
        quantity: data["quantity"]
        );
  }
}
