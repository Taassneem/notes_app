import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'widgets/edited_color_list_view.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;
  static String id = 'EditNoteView';

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: const Icon(Icons.check),
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    content ?? widget.noteModel.subTitle;
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.noteModel.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.noteModel.subTitle,
              maxLines: 7,
            ),
            const SizedBox(
              height: 30,
            ),
            EditedColorListView(
              note: widget.noteModel,
            )
          ],
        ),
      ),
    );
  }
}
