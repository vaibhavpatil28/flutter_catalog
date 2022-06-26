import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: const Center(
        child: Text("welcome to flutter"),
      ),
      drawer: MyDrawer(),
    );
  }
}