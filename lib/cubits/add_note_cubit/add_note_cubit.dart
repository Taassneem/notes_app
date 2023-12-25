import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var boxNote = Hive.box<NoteModel>(kOpenBox);
      await boxNote.add(note);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
