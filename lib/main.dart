import 'package:flutter/material.dart';
import 'package:fitfusion/app/app.dart';
import 'package:fitfusion/app/admin_app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  // Switch between apps here (use env vars in production)
  runApp(const FitFusionApp()); // For main app
  // runApp(const AdminPortalApp()); // For admin panel
}￼Enter
