import 'dart:async';
import 'package:ecommerce_app/model/user.dart';
import 'package:ecommerce_app/Core/services/firestore_service.dart';
import 'package:ecommerce_app/view/auth/loginpage.dart';
import 'package:ecommerce_app/view/pages/homeview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  Rxn<User> _user = Rxn<User>();
  String? get user => _user.value?.email;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(authCredential).then((value) {
      saveuserinfo(value);
      throw 0;
    });
    print(userCredential);
  }

  // FacesigninMethod() async {
  //   FacebookLoginResult result =
  //       await _facebookLogin.logIn(permissions: [FacebookPermission.email]);
  //   print(result);
  //   final accestoken = result.accessToken!.token;
  //   if (result.status == FacebookLoginStatus.success) {
  //     final faceauth = FacebookAuthProvider.credential(accestoken);
  //     await _auth.signInWithCredential(faceauth);
  //   }
  // }
  signInWithFacebook() async {
    // Trigger the sign-in flow
    late OAuthCredential facebookAuthCredential;
    final LoginResult loginResult = await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile', 'user_profile']);
    if (loginResult.status == LoginStatus.success) {
      AccessToken? _accessToken = loginResult.accessToken;
      facebookAuthCredential =
          FacebookAuthProvider.credential(_accessToken!.token);
      await _auth.signInWithCredential(facebookAuthCredential).then((value) {
        saveuserinfo(value);
      });
    } else {
      print('ResultStatus: ${loginResult.status}');
      print('Message: ${loginResult.message}');
    }
    // Create a credential from the access token
    // Once signed in, return the UserCredential
  }

  void signin() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      Get.offAll(() => Homeview());
    } catch (e) {
      Get.snackbar('error occured', e.toString());
    }
  }

  void signout() async {
    await _auth.signOut();
    Get.offAll(() => loginpage());
  }

  void signup() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then(saveuserinfo);
      Get.offAll(() => Homeview());
    } catch (e) {
      Get.snackbar('error occured', e.toString());
    }
  }

  FutureOr<Null> saveuserinfo(value) async {
    await FirestoreClass().addUserToFireStore(UserModel(
        userId: value.user!.uid,
        email: value.user!.email,
        name: name.text,
        pic: ''));
  }
}
