import 'package:book_tickets/services/auth_service.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
    final String firebaseUser =
        _firebaseAuth.currentUser!.displayName ?? 'Unknown user';
    final String firebaseEmail =
        _firebaseAuth.currentUser!.email as String;
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/avatar.png',
                  scale: 11,
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                Text(
                  firebaseUser,
                  style: Styles.headLineStyle1,
                ),
                Text(
                  firebaseEmail,
                  style: Styles.headLineStyle3,
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: OutlinedButton( 
                    onPressed: () => context.read<AuthService>().logout(), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Log out',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      );
  }
}