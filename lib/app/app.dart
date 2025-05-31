import 'package:flutter/material.dart';
import 'package:fitfusion/core/presentation/app.dart';

class FitFusionApp extends StatelessWidget {
  const FitFusionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FitFusion',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}￼Enter
