import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:wax/basic/methods.dart';

import '../protos/properties.pb.dart';
import 'components/actions.dart';
import 'components/browser_bottom_sheet.dart';
import 'components/comic_pager.dart';

class FavouriteScreen extends StatefulWidget {

  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("收藏"),
        actions: [
          ...alwaysInActions(),
          const BrowserBottomSheetAction(),
        ],
      ),
      body: ComicPager(
        onPage: _fetch,
      ),
    );
  }

  Future<FetchComicResult> _fetch(int page) async {
    return methods.favoriteList(0, page);
  }
}
