import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                height: 1000,
                width: 1500,
                color: Color.fromARGB(255, 233, 139, 33),
                child: PostView())));
  }
}

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class Post {
  int userId;
  int id;
  String body;
  String title;
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class _PostViewState extends State<PostView> {
  List<Post> _posts = [];
  String modeChanger = "title";

  Future<void> fetchData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var parsedUrl = Uri.parse(url);
    print("parsed url is 👉 $parsedUrl from 👉 $url 🫎");
    var response = await http.get(parsedUrl);
    if (response.statusCode == 200) {
      List<dynamic> postsjson = jsonDecode(response.body);

      setState(() {
        _posts = postsjson
            .map((item) => Post(
                id: item['id'],
                userId: item['userId'],
                title: item['title'],
                body: item['body']))
            .toList();
      });
    } else {
      throw Exception("💩");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return _posts.isEmpty
        ? Center(child: const CircularProgressIndicator())
        : Column(
            children: [
              AppBar(
              backgroundColor: Color.fromARGB(255, 49, 144, 66),
              title: Text('Press button to switch betwen user & post mode'),
              actions: [
                ElevatedButton(onPressed: () {
                 setState(() {
    modeChanger = modeChanger == 'title' ? 'userId' : 'title';
  });
                        }, child: Text('Mode changer'))
              ],
            ),
            SizedBox(
              height: 1000,
              child: 
            GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 10,
                  ),
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // child: Text(_posts[index][modeChanger]),
                      child: Text(modeChanger == "title"
                          ? _posts[index].title
                          : _posts[index].userId.toString()),
                    );
                  }))
              
            ],
          );
  }
}
