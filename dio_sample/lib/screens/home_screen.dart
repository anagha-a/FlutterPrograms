import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Dio? dio;
  late List posts;
  late List listed_posts;

  int start = 0;
  int end = 10;
  var postIDList = <int>[];

  bool loading = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    BaseOptions options = BaseOptions();
    options.baseUrl = 'https://hacker-news.firebaseio.com/';

    dio = Dio(options);
    initializePosts();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('new data call');
        print('end : $end');
        addNewDatas();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void initializePosts() async {
    setState(() {
      loading = true;
    });

    List postIDs = await getPostIDs();

    var postResponse = await Stream.fromIterable(postIDs)
        .asyncMap((id) => getPostById(id))
        .toList();
    posts = postResponse;
    listed_posts = posts.sublist(start, end);

    setState(() {
      loading = false;
    });
  }

  void addNewDatas() async {
    var temp_start = 0;
    var temp_end = end + 5;

    setState(() {
      listed_posts = List.from(posts.sublist(start, end));
      //listed_posts.addAll(posts.sublist(start, end));

      start = temp_start;
      end = temp_end;
    });
  }

  // Get Post ID's
  Future getPostIDs() async {
    Response result = await dio!.get('v0/topstories.json');

    if (result.statusCode == 200) {
      return result.data;
    } else {
      print('Error : ${result.headers}');
    }

    return postIDList;
  }

  Future getPostById(int postID) async {
    setState(() {
      loading = true;
    });

    final response = await dio!.get('v0/item/$postID.json');

    if (response.statusCode == 200) {
      return response.data;
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Dio'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: !loading
              ? ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(8),
                  itemCount: listed_posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PostCard(
                      title: listed_posts[index]['title'],
                      url: listed_posts[index]['url'] ?? 'No url',
                      writer: listed_posts[index]['by'],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    color: Colors.orange,
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  color: Colors.orange,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  )
          )
      ),
    );
  }
}