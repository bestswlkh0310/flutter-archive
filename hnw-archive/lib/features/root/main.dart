import 'package:flutter/material.dart';
import 'package:flutterproj/component/button/gsv_button.dart';
import 'package:flutterproj/features/root/main_viewmodel.dart';
import 'package:flutterproj/features/root/nav.dart';
import 'package:flutterproj/features/ui/ui.dart';
import 'package:flutterproj/theme/color.dart';
import 'package:provider/provider.dart';
import '../home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => MainViewModel(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            splashColor: ColorStyle.transparent,
            highlightColor: ColorStyle.transparent,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          initialRoute: "/main",
          routes: {
            '/main': (context) => const Nav(),
            '/ui': (context) => UiView()
          },
          // home: UiView(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
