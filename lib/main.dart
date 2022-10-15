import 'package:flutter/material.dart';
import 'package:dashboard_responsive/responsive/tv_scaffold.dart';
import 'package:dashboard_responsive/responsive/desktop_scaffold.dart';
import 'package:dashboard_responsive/responsive/mobile_scaffold.dart';
import 'package:dashboard_responsive/responsive/responsive_layout.dart';
import 'package:dashboard_responsive/responsive/tablet_scaffold.dart';

void  main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
        tvScaffold: TvScaffold(),
      ),
    );
  }
}
