
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/authentication/models/product_model.dart';

class FirestoreDB {
  // Initialize FireBase Cloud Firestore

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<Product>> getAllProducts() {
    return _firebaseFirestore
        .collection('Products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
    });
  }
}
