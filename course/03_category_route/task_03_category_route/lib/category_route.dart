import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';

// TODO: Define any constants

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    )
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    final categories = <Category>[];
    for (var i = 0; i < _categoryNames.length; i++){
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: Colors.grey[200],
      child: _buildCategoryWidgets(categories),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      centerTitle: true,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: 30.0,
        )
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
