// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../widgets/common/ux_development.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite "),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const UXDevelopment(showButton: false),
      ),
    );
  }
}
