import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});
  static const String routeName = '/comments';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CommentPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('data'),
              Text('data'),
            ],
          )),
    );
  }
}
