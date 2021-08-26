import 'package:flutter/material.dart';
import 'package:study_material_app/Books/notesHome.dart';
import 'package:study_material_app/Books/syllabus.dart';
import 'package:study_material_app/Books/ebookHome.dart';
import 'package:study_material_app/Videos/module.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';

class Aids extends StatelessWidget {
  static const String id = 'Aids';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    String subject = args.subject;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Background(
                height1: 280.0,
                height2: 150.0,
                height3: 100.0,
                height4: 100.0,
              ),
              SizedBox(height: 50.0),
              CustomTileDesign(
                name: 'SYLLABUS',
                onPressed: () {
                  Navigator.pushNamed(context, SyllabusScreen.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
              CustomTileDesign(
                name: 'NOTES',
                onPressed: () {
                  Navigator.pushNamed(context, NotesHome.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
              CustomTileDesign(
                name: 'E-BOOKS',
                onPressed: () {
                  Navigator.pushNamed(context, EbookHome.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
              CustomTileDesign(
                name: 'VIDEOS',
                onPressed: () {
                  Navigator.pushNamed(context, ModulePage.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String subject;
  ScreenArguments(this.subject);
}
