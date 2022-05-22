import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wax/basic/methods.dart';
import 'package:wax/protos/properties.pb.dart';

import '../basic/cates.dart';
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

  late final _tag = widget.tag;
  var _cate = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title()),
        actions: [
          ...alwaysInActions(),
          const BrowserBottomSheetAction(),
          chooseCateAction(context),
        ],
      ),
      body: ComicPager(
        key: Key("$_tag:$_cate"),
        onPage: _onPage,
      ),
    );
  }

  String _title() {
    if (_tag != "") {
      return _tag;
    }
    if (_cate != "") {
      return catesVnMap[_cate] ?? "";
    }
    return "全部漫画";
  }

  Future<FetchComicResult> _onPage(int page) async {
    if (_tag != "") {
      return methods.fetchComic(
        "tag",
        _tag,
        page,
      );
    }
    if (_cate != "") {
      return methods.fetchComic(
        "cate",
        _cate,
        page,
      );
    }
    return methods.fetchComic("", "", page);
  }

  Widget chooseCateAction(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final c = await chooseCate(context);
        setState(() {
          _cate = c;
        });
      },
      icon: const Icon(Icons.category),
    );
  }
}
