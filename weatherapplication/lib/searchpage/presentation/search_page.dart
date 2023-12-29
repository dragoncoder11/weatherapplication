import 'package:flutter/material.dart';
import 'package:weatherapplication/searchpage/presentation/search_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchBody(),
    );
  }
}