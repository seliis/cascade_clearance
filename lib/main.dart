import "package:cascade_clearance/view/index.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CASCADE CLEARANCE",
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: "Roboto",
      ),
      home: const LandingPage(),
    ),
  );
}
