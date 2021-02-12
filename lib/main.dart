import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        // Create column inside of an expanded widget stretchs the column to use all free space in the row
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //adds padding/grey text
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Trips to Mars',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Mars',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      //The last two items in the title row are a star icon, painted red, and the text “41”.
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);
  
   return MaterialApp(
     title: 'its a cool app',
     home: Scaffold(appBar: AppBar(
       title: Text('Its a cool flutter app'),
     ),
     body: Column(
       children: [
       titleSection,
     ],
     ),
     ),
   );

   