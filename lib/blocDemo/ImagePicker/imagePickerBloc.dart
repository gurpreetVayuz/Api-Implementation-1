import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskday1/blocDemo/ImagePicker/imagePickerEvent.dart';
import 'package:taskday1/blocDemo/ImagePicker/imagePickerState.dart';
import 'package:taskday1/utils/imagePickerUtilities.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerStates> {
  final ImagePickerUtilitites imagePickerUtilitites;

  ImagePickerBloc(this.imagePickerUtilitites) : super(ImagePickerStates()) {
    on<CameraCapture>(_cameraCapture);
  }
  void _cameraCapture(
      CameraCapture event, Emitter<ImagePickerStates> states) async {
    XFile? file = await imagePickerUtilitites.cameraCapture();
    emit(state.copyWith(file: file));
  }
}
