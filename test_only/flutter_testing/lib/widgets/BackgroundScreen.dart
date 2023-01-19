import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    './img/my.jpg',
                  ),
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     color: Color.fromARGB(66, 14, 12, 12),
          //   ),
          // )
        ],
      ),
    );
  }
}
