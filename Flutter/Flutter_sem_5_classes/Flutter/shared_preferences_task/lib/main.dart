import 'package:flutter/material.dart';
import 'package:shared_preferences_task/view/shared_pref_view.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preferences',
      home: SharedPrefView(),
    )
  );
}