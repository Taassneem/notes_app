import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditedColorListView extends StatefulWidget {
  const EditedColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditedColorListView> createState() => _EditedColorListViewState();
}

class _EditedColorListViewState extends State<EditedColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;

              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ColorItem(
                isSelected: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
