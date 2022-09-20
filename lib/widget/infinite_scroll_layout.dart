part of 'core_widget.dart';

// class InfiniteScrollWidget extends StatefulWidget {
//   const InfiniteScrollWidget({super.key});

//   @override
//   State<InfiniteScrollWidget> createState() => InfiniteScrollWidgetState();
// }

// class InfiniteScrollWidgetState extends State<InfiniteScrollWidget> {
//   static final _pageSize = 20;

//   final PagingController<int, Post> _pagingController = PagingController(firstPageKey: 0);

//   var _numberOfPostsPerRequest;

//   Future<void> _fetchPage(int pageKey) async {
//     try {
//       final response = await get(Uri.parse(
//           "https://jsonplaceholder.typicode.com/posts?_page=$pageKey&_limit=$_numberOfPostsPerRequest"));
//       List responseList = json.decode(response.body);
//       List<Post> postList = responseList.map((data) =>
//           Post(data['title'], data['body'])).toList();
//       final isLastPage = postList.length < _numberOfPostsPerRequest;
//       if (isLastPage) {
//         _pagingController.appendLastPage(postList);
//       } else {
//         final nextPageKey = pageKey + 1;
//         _pagingController.appendPage(postList, nextPageKey);
//       }
//     } catch (e) {
//       print("error --> $e");
//       _pagingController.error = e;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: PagedListView(pagingController: , builderDelegate: builderDelegate),

//     );
//   }
// }

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);

  Post.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        body = json['body'];

  // Map<String, dynamic> toJson() => {
  //       'title': title,
  //       'email': body,
  //     };

  Map<String, dynamic> toJson() => {
        'title': title,
        'body': body,
      };
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
