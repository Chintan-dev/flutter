import 'package:flutter/material.dart';

class LHero extends StatefulWidget {
  const LHero({Key? key, this.title, this.val}) : super(key: key);
  final String? title;
  final int? val;

  @override
  // ignore: library_private_types_in_public_api
  _LHeroState createState() => _LHeroState();
}

class _LHeroState extends State<LHero> {
  Widget _smallImage(int val) {
    val++;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        backgroundImage: AssetImage('./img/pic/$val.jpg'),
        radius: 28,
      ),
    );
  }

  Widget _bigImage(val) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 300,
      height: 300,
      child: CircleAvatar(
        backgroundImage: AssetImage('./img/pic/$val.jpg'),
        radius: 28,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: List<Widget>.generate(9, (index) {
            Key n1 = GlobalKey();
            int val = index;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: GestureDetector(
                  key: n1,
                  child: Hero(
                    tag: index.toString(),
                    child: _smallImage(val),
                  ),
                  onTap: () => _fullImagePage(context, val, index.toString()),
                ),
                title: Text('Tap for transition $val'),
              ),
            );
          }),
        ),
      ),
    );
  }

  void _fullImagePage(BuildContext context, val, String tag) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(49, 0, 0, 0),
          elevation: 1,
          title: Text("Big Image $val"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: _bigImage(val),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
