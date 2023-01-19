import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Flashmessage extends StatelessWidget {
  const Flashmessage({
    Key? key,
    required this.errormsg,
  }) : super(key: key);
  final String errormsg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Text(errormsg)],
    );
  }
}
