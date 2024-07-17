import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskday1/blocDemo/ImagePicker/imagePickerBloc.dart';
import 'package:taskday1/blocDemo/counter/counterBloc.dart';
import 'package:taskday1/blockUi/counterScreen.dart';
import 'package:taskday1/mainScreen/view/mainScreenView.dart';
import 'package:taskday1/posts/postBloc.dart';
import 'package:taskday1/posts/view/postUi.dart';
import 'package:taskday1/utils/imagePickerUtilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtilitites())),
        BlocProvider(create: (_) => PostBloc())
      ],
      // create: (context) => CounterBloc(),
      child: MaterialApp(
        home: PostView(),
      ),
    );
  }
}
