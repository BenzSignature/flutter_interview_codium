import 'package:flutter/material.dart';

class Basiclayout extends StatefulWidget {
  @override
  _BasiclayoutState createState() => _BasiclayoutState();
}

class _BasiclayoutState extends State<Basiclayout> {
  final myStyle = TextStyle(fontSize: 14, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Codium Test')),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: orientation == Orientation.portrait ? 2 : 1,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Color(0xFF458593),
                        alignment: Alignment.center,
                        child: Text(
                          'LOGO',
                          style: myStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: orientation == Orientation.portrait ? 10 : 12,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Color(0xFF88464A),
                        alignment: Alignment.center,
                        child: Text(
                          'TOP MENU',
                          style: myStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: orientation == Orientation.portrait ? 16 : 7,
                child: Row(
                  children: [
                    Expanded(
                      flex: orientation == Orientation.portrait ? 2 : 2,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Color(0xFF0C263F),
                        alignment: Alignment.center,
                        child: Text(
                          'LEFT MENU',
                          style: myStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: orientation == Orientation.portrait ? 5 : 13,
                      child: Column(
                        children: [
                          Expanded(
                            flex: orientation == Orientation.portrait ? 1 : 1,
                            child: Container(
                              margin: EdgeInsets.all(4),
                              // padding: EdgeInsets.all(4),
                              color: Color(0xFF464646),
                              alignment: Alignment.center,
                              child: Text(
                                'HEADER',
                                style: myStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: orientation == Orientation.portrait ? 16 : 6,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: orientation == Orientation.portrait
                                      ? 2
                                      : 1,
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    // padding: EdgeInsets.all(4),
                                    color: Color(0xFF7993AA),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'CONTENT',
                                      style: myStyle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: orientation == Orientation.portrait
                                      ? 4
                                      : 6,
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    // padding: EdgeInsets.all(4),
                                    color: Color(0xFF8D8D8D),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'DETAIL',
                                      style: myStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
