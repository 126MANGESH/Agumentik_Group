import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import Firebase Auth;
import 'package:flutter_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/certificatepage.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/id_card.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/sign_up_page.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: FirebaseOptions( apiKey: "AIzaSyCdQCOehgWIDogLoOSBnhprf5hJNf_vNAY",
  authDomain: "agumentik-2fb86.firebaseapp.com",
  projectId: "agumentik-2fb86",
  storageBucket: "agumentik-2fb86.appspot.com",
  messagingSenderId: "881243412086",
  appId: "1:881243412086:web:06551ab49a980cd6dc7157",
  measurementId: "G-69N03TPCC1"));
    }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agumentik Group',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/certificate':(context) => certificatepage(username: '', email: '',),
        '/Idcadr': (context) => IdCardPage(username: '', email: '',),
      },
    );
  }
}
