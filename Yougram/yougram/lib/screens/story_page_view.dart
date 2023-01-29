import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:yougram/Data/data.dart';

class StoryPageView extends StatefulWidget {
  final Item item;
  const StoryPageView({super.key, required this.item});

  @override
  State<StoryPageView> createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller = StoryController();

  // var video ='file:///C:/Users/Chintan_patel/Downloads/Video/PlatformException(sign_in_failed,com.google.android.gms.common.api.apiexception_12500_%20,%20null,%20null).mp4';
  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.text(
        title: '''“When you talk, you are only repeating something you know.
       But if you listen, you may learn something new.” 
       – Dalai Lama''',
        backgroundColor: Colors.blueGrey,
      ),
      StoryItem.pageImage(
        url:
            "https://images.unsplash.com/photo-1553531384-cc64ac80f931?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8bW91bnRhaW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        controller: controller,
      ),
      StoryItem.pageImage(
        url: "https://wp-modula.com/wp-content/uploads/2018/12/gifgif.gif",
        controller: controller,
        imageFit: BoxFit.contain,
      ),
    ];

    return Material(
      child: Expanded(
        child: Stack(
          children: [
            StoryView(
              storyItems: storyItems,
              controller: controller,
              inline: false,
              repeat: true,
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  Navigator.pop(context);
                }
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.item.photoURL),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.displayName,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Today, 10:10pm',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.more_vert_sharp),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
