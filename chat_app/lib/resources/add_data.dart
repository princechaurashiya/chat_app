// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// final FirebaseStorage _storage = FirebaseStorage.instance;
// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// class StoreData{

// Future<String> uploadImageToStorage(String childName, Uint8List file ) async {
//  Reference _storage.ref().child(childName);
//  UploadTask uploadTask = ref.putData(file);
//  TaskSnapshot snapshot = await uploadTask;
//  String downloadUrl = await snapshot.ref.getDownloadURL();
//  return downloadUrl;
// }Future <String> saveData ({
//   required String name,
//   required String bio,
//   required Uint8List file,}) async {

//     String rest = "Some Error Occurred";
//     try{
//       if (name.isNotEmpty|| bio.isNotEmpty){
//       uploadImageToStorage('ProfileImage', file);
//       await _firestore.colloection('userProfile').add({
//         'name': name,
//         'bio': bio,
//         'imageLink': imageUrl,
//       });
//       resp = 'success';
//       }
//     }
//     catch(err){
//       resp =err.toString();
//     }

//   }

// }

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData {
  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    Reference ref = _storage.ref().child(childName).child('id');
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> saveData({
    required String name,
    required String bio,
    required Uint8List file,
  }) async {
    String resp = "Some Error Occurred";
    try {
      if (name.isNotEmpty || bio.isNotEmpty) {
        String imageUrl = await uploadImageToStorage('ProfileImage', file);
        await _firestore.collection('userProfile').add({
          'name': name,
          'bio': bio,
          'imageLink': imageUrl,
        });
        resp = 'success';
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }
}
