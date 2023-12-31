import 'package:education_app/core/res/colors.dart';
import 'package:education_app/core/res/fonts.dart';
import 'package:education_app/core/services/injection_container.dart';
import 'package:education_app/core/services/router.dart';
import 'package:education_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        fontFamily: Fonts.poppins,
        colorScheme: ColorScheme.fromSwatch(accentColor: MyColors.primaryColor),
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
