import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  //get collection of odders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to db
  Future<void> saveOrderToDatbase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
    });
  }
}
