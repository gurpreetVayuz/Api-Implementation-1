import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskday1/blocDemo/ImagePicker/imagePickerBloc.dart';
import 'package:taskday1/blocDemo/ImagePicker/imagePickerState.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerStates>(
          builder: (context, state) {
            if (state.file == null) {
              return InkWell(
                onTap: () {
                  
                },
                child: CircleAvatar(
                  child: Icon(Icons.camera),
                ),
              );
            } else {
              return Image.file(File(state.file!.path.toString()));
            }
          },
        ),
      ),
    );
  }
}
