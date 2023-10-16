import 'package:flutter/material.dart';
import 'theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: themeData,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SGOK'),
        centerTitle: false,
        actions: const [Text('SGOK')],
      ),
      body: ListView(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        // crossAxisCount: 1,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return SizedBox(

            height: 92,
            child: Row(

              // This next line does the trick.
              // scrollDirection: Axis.horizontal,/**/
              children: <Widget>[
                Container(
                    color: (index % 2 == 0) ? Colors.red : Colors.white,
                    height: 92,
                    width: 304,
                    child: Image.network((index % 2 == 0) ? 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f6/Azores_Airlines_logo.svg/1920px-Azores_Airlines_logo.svg.png': 'https://i.imgur.com/YgutAKt.png')
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: (index % 2 == 0) ? Colors.red : const Color(0xFF005589),
                    height: 92,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: (index % 2 == 0) ? const Color(0xFF00142C) : const Color(0xFF005589),
                    height: 92,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: (index % 2 == 0) ? const Color(0xFF00142C) : const Color(0xFF005589),
                    height: 92,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: (index % 2 == 0) ? const Color(0xFF00142C) : const Color(0xFF005589),
                    height: 92,
                  ),
                ),
                Container(
                  color: (index % 2 == 0) ? const Color(0xFF00142C) : const Color(0xFF005589),
                  height: 92,
                  width: 200,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

}


