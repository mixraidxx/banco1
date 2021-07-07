import 'package:bankapp/Brand/Theme.dart';
import 'package:bankapp/views/CvvView.dart';
import 'package:bankapp/views/DetailCardView.dart';
import 'package:bankapp/views/LoginView.dart';
import 'package:bankapp/views/MainView.dart';
import 'package:bankapp/views/OperationsHistoryView.dart';
import 'package:bankapp/views/TranferDetailView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: BrandTheme.appTheme,
        home: LoginView(),
        routes: {
          MainView.routeName: (context) => MainView(),
          DetailCardView.routeName: (context) => DetailCardView(),
          OperationsHistoryView.routeName: (context) => OperationsHistoryView(),
          TranferDetailView.routeName: (context) => TranferDetailView(),
          CvvView.routeName: (context) => CvvView(),
        });
  }
}
