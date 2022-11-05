import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/model/user.dart';

class FirestoreClass{
final CollectionReference _refrence = FirebaseFirestore.instance.collection("User");
Future<void> addUserToFireStore(UserModel userModel) async{
  return await _refrence.doc(userModel.userId).set(userModel.toJson());

}

}