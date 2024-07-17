import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskday1/posts/api/postRepository.dart';
import 'package:taskday1/posts/postEvent.dart';
import 'package:taskday1/posts/postStates.dart';
import 'package:taskday1/utils/enums.dart';

class PostBloc extends Bloc<PostEvents, PostStates> {
  ApiRepository apiRepository = ApiRepository();
  PostBloc() : super(const PostStates()) {
    on<PostsFetched>(postFetch);
  }

  void postFetch(PostsFetched event, Emitter<PostStates> emit) async{
    await apiRepository.fetchPost().then((value) {
      emit(state.copyWith(
          postStatus: PostStatus.success, message: "success", postList: value));
    }).onError((error, stackTrace) {
      emit(
        state.copyWith(
            postStatus: PostStatus.failure, message: error.toString()),
      );
    });
  }
}
