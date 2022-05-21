import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wax/basic/methods.dart';

import 'components/actions.dart';
import 'components/browser_bottom_sheet.dart';
import 'components/comic_pager.dart';

class BrowserScreen extends StatefulWidget {
  final String tag;

  const BrowserScreen({this.tag = "", Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag == "" ? "浏览" : widget.tag),
        actions: [
          ...alwaysInActions(),
          const BrowserBottomSheetAction(),
        ],
      ),
      body: ComicPager(
        // key: Key("$_slug:$_sortBy"),
        onPage: (int page) async {
          return methods.fetchComic(widget.tag, page);
        },
      ),
    );
  }
}
