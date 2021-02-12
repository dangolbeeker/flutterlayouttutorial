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

    /*MainAxisAlignment.spaceEvenly to arrange the free space evenly before, 
    between, and after each column.*/

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons, 'Phone Home'),
          _buildButtonColumn(color, Icons, 'Email'),
          _buildButtonColumn(color, Icons, 'Miles to Mars'),
      ],
      ),
      );

      
    
//Custom build method to share widget logic
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text( 
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
           ),
          ),
        ),
      ],
    );
  }
}




    return MaterialApp(
      title: 'its a cool app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Its a cool flutter app'),
        ),
        body: Column(
          children: [
            buttonSection,
          ],
        ),
      ),
    );
  }
}
