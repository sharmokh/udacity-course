import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;

  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon,
  })  : assert(name != null),
        assert(color != null),
        assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container (
      height: 100.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        highlightColor: color,
        splashColor: color,
        onTap: () {
          print('I was tapped!');
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                icon,
                size: 60.0,
              ),
            ),
            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
