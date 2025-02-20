import 'package:flutter/material.dart';

import '../basic/methods.dart';
import '../protos/properties.pb.dart';
import 'components/comic_pager.dart';

class ComicHistoriesScreen extends StatefulWidget {
  const ComicHistoriesScreen({Key? key}) : super(key: key);

  @override
  State<ComicHistoriesScreen> createState() => _ComicHistoriesScreenState();
}

class _ComicHistoriesScreenState extends State<ComicHistoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("历史记录"),
      ),
      body: ComicPager(
        onPage: _onPage,
      ),
    );
  }

  Future<FetchComicResult> _onPage(int page) async {
    return await methods.fetchHistory(page);
  }
}
