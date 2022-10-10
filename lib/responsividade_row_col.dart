import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  State<ResponsividadeRowCol> createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 200,
          // ),
          Expanded(
            flex: 2,
              child: Container(
                color: Colors.red,
              ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
