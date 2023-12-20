import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_elevated_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class ModelBottomSheet extends StatelessWidget {
  const ModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 80,
            ),
            CustomElevatedButton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
