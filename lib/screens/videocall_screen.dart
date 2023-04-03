import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/utils/colors.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: true,
        title: const Text('Video Call'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              color: primaryColor,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const VideoCallScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
