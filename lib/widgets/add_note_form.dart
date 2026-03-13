import 'package:flutter/material.dart';
import 'package:follow_app/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            maxLines: 1,
            content: "Enter Note Address",
            submit: (value) {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                setState(() {
                  title = value;
                });
              }
            },
          ),
          CustomTextFormField(
            submit: (value) {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                setState(() {
                  subTitle = value;
                });
              }
            },
            maxLines: 5,
            content: "Enter Note Body",
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                setState(() {
                  autoValidateMode == AutovalidateMode.always;
                });
              }
            },
            child: Text("Add Note"),
          )
        ],
      ),
    );
  }
}
