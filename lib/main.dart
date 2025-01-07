import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maincategory/presentations/categorydetail.dart';
import 'package:maincategory/presentations/scaffoldpage.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => CategoryPage()),
  GoRoute(path: '/breakfast', builder: (context, state)=> CategoryDetailItem())
]
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
