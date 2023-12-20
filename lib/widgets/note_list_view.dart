import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  final List<Color> colors = const [
    Color(0xffD8A4DD),
    Color(0xffFFCD7B),
    Color(0xffE8E897),
    Color(0xff77D6F1),
    Color(0xffFFCD7B),
    Color(0xffD8A4DD),
    Color(0xffFFCD7B),
    Color(0xff77D6F1),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return NoteCard(
            color: colors[index],
          );
        },
      ),
    );
  }
}
