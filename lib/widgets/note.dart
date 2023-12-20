import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    'build ypur note here for first time with tasneem radwan',
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.trash,
                        size: 24, color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 24.0),
                child: Text(
                  'update at 16:00',
                  style: TextStyle(color: Colors.black38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
