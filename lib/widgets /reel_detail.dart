import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 12,
          title: Text(
            "Nguyen Dinh Minh",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          leading: CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1682686578456-69ae00b0ecbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: ExpandableText(
            'This example shows a message that was posted by a user. The username is always visible right before the text and tapping on it opens the user profile. The text is truncated after two lines and can be expanded by tapping on the link show more at the end or the text itself. After the text was expanded it cannot be collapsed again as no collapseText was provided. URLs, @mentions and #hashtags in the text are styled differently and can be tapped to open the browser or the user profile. Icon names equal those on the official website, but are written in lower camel case. If more than one icon style is available for an icon, the style name is used as prefix, except for "regular". Due to restrictions in dart, icons starting with numbers have those numbers written out.',
            style: TextStyle(
                fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500),
            expandText: 'more',
            collapseText: 'less',
            collapseOnTextTap: true,
            expandOnTextTap: true,
            maxLines: 1,
            linkColor: Colors.grey,
          ),
        ),
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 5,
          title: Text(
            "music - original music",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          leading: Icon(
            Icons.graphic_eq,
            size: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
