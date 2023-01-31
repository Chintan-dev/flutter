// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:yougram/Data/data.dart';

import '../screens/hero.dart';

class Post extends StatefulWidget {
  const Post({Key? key, this.title, this.val}) : super(key: key);
  final String? title;
  final int? val;

  @override
  // ignore: library_private_types_in_public_api
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(55, 0, 0, 0),
        elevation: 0,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 13,
                    ),
                    hintText: "Type something...",
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    // fillColor: const Color.fromARGB(121, 255, 255, 255),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(0, 255, 255, 255), width: 0),
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),

              // child: TextField(
              //   //controller: controller.textEditingController,
              //   onChanged: (val) {
              //     //controller.text = val;
              //   },
              //   style: const TextStyle(fontSize: 14),
              //   decoration: const InputDecoration(
              //     hintText: 'Type something...',
              //     border: InputBorder.none,
              //   ),
              //   //onSubmitted: (_) => ,
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 24.0,
            ),
            child: IconButton(
              color: Colors.amber,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) {
            final item = items[index];
            return Row(
              children: [
                Hero(
                  transitionOnUserGestures: true,
                  tag: item,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Profile(item: item)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(item.photoURL),
                        radius: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  item.displayName,
                  // style: const TextStyle(fontSize: 24),
                ),
              ],
            );
          })),
    );
  }
}
