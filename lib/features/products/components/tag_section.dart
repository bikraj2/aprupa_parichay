import 'package:aprupa_parichay/app/component/show_on_tap.dart';
import 'package:aprupa_parichay/app/component/tag.dart';
import 'package:flutter/material.dart';

class TagSection extends StatelessWidget {
  TagSection({super.key, required this.tags});
  List<String> tags;
  @override
  Widget build(BuildContext context) {
    return ShowOnTap(
        child: Row(
          children: [
            ...tags.map((e) => Tag(
                  name: e,
                  textColor: Color.fromARGB(255, 80, 65, 184),
                )),
          ],
        ),
        title: "Tags",
        icon: Icon(Icons.keyboard_arrow_down));
  }
}
