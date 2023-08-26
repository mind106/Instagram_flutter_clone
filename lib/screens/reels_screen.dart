import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/screens/content_screen.dart';
import 'package:instagram_clone_flutter/widgets%20/reel_detail.dart';
import 'package:instagram_clone_flutter/widgets%20/reel_side_action_bar.dart';

class ReelScreen extends StatelessWidget {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            "Reels",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.photo_camera_outlined),
              color: Colors.white,
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ContentScreen(
                      src: videos[index],
                    );
                  },
                  itemCount: videos.length,
                  scrollDirection: Axis.vertical,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 14,
                          child: ReelDetail(),
                        ),
                        Flexible(
                          flex: 2,
                          child: ReelSideActionBar(),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
