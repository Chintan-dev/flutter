/* ******************************************
                 *** START***
****************************************** */

import 'package:flutter/material.dart';

class LListViewWidget extends StatelessWidget {
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
          constraints: new BoxConstraints(
            minHeight: 35.0,
            maxHeight: 160.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: _listBuilder()),
            ],
          )),
    );
  }

// The ListView.builder constructor takes an IndexedWidgetBuilder, which builds the children on demand.

  Widget _listBuilder() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 500,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index % 10]],
            child: Center(child: Text('Item $index')),
          );
        });
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
