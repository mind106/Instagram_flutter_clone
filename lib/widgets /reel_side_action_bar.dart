import 'package:flutter/material.dart';

class ReelSideActionBar extends StatefulWidget {
  const ReelSideActionBar({Key? key}) : super(key: key);

  @override
  State<ReelSideActionBar> createState() => _ReelSideActionBarState();
}

class _ReelSideActionBarState extends State<ReelSideActionBar> {
  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.favorite_outline),
          color: Colors.white,
          iconSize: _iconSize,
        ),
        const Text(
          "1,34k",
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.comment_rounded),
          iconSize: _iconSize,
        ),
        const Text(
          "347",
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Transform(
          transform: Matrix4.rotationZ(5.8),
          child: Icon(Icons.send),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.more_horiz),
          iconSize: _iconSize,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.unsplash.com/photo-1682686578456-69ae00b0ecbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
