import 'package:image_picker/image_picker.dart';

class ImagePickerUtilitites {
  final ImagePicker _imagepicker = ImagePicker();

  Future<XFile?> cameraCapture() async {
    final XFile? file = await _imagepicker.pickImage(source: ImageSource.camera);
    return file;
  }

  Future<XFile?> galleryCapture() async {
    final XFile? file = await _imagepicker.pickImage(source: ImageSource.gallery);
    return file;
  }
}
