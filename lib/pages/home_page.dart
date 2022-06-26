import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/item_widget.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, ((index) => CatalogModel.items[0]));

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}