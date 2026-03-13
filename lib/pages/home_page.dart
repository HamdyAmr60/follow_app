import 'package:flutter/material.dart';

import '../widgets/add_note_form.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: customAppBar(),
      floatingActionButton:customFloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
              context: context, builder: (context){
            return SingleChildScrollView(
              child: AddNoteForm(),
            );
          });
        }
      ),
      body:ListView.builder(
        itemCount:10,
          itemBuilder:(context , index){
        return NoteCard();
      }),
    );
  }
}
