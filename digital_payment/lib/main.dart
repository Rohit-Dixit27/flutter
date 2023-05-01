import 'package:kissan_pay/pages/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Payment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        primaryColor: primaryColor,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: const AppBarTheme(
          color: Color(0xffF2F4F6),
          elevation: 1.5,
          iconTheme: IconThemeData(color: blackColor),
        ),
      ),
      home: const Splash(),
    );
  }
}
