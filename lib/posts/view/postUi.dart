import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskday1/posts/postBloc.dart';
import 'package:taskday1/posts/postEvent.dart';
import 'package:taskday1/posts/postStates.dart';
import 'package:taskday1/utils/enums.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<PostBloc>().add(PostsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Api"),
      ),
      body: BlocBuilder<PostBloc, PostStates>(
        builder: (context, state) {
          switch (state.postStatus) {
            case PostStatus.loading:
              return CircularProgressIndicator();

            case PostStatus.failure:
              return Text("Error While Fetching the data");
            case PostStatus.success:
              return ListView.builder(
                  itemCount: state.postList.length,
                  itemBuilder: (context, index) {
                    final item = state.postList[index];
                    return ListTile(
                      title: Text(item.email.toString()),
                      subtitle: Text(item.body.toString()),
                    );
                  });
          }
        },
      ),
    );
  }
}
