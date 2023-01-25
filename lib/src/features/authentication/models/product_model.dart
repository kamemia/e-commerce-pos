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

  /// Step 1 - Map customer fetched from Firebase to ProductModel
  factory ProductModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ProductModel(
        id: document.id,
        title: data["Title"],
        description: data["Description"],
        price: data["Price"],
        sku: data["Sku"],
        barcode: data["Barcode"],
        quantity: data["Quantity"]
        );
  }
}
