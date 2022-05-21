import 'package:flutter/material.dart';
import 'package:wax/basic/methods.dart';
import 'package:wax/protos/properties.pb.dart';

import '../basic/commons.dart';
import 'browser_screen.dart';
import 'comic_reader_screen.dart';
import 'components/actions.dart';
import 'components/content_builder.dart';
import 'components/images.dart';

class ComicInfoScreen extends StatefulWidget {
  final ComicSimple comicSimple;

  const ComicInfoScreen(this.comicSimple, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ComicInfoScreenState();
}

class _ComicInfoScreenState extends State<ComicInfoScreen> {
  late Future<ComicInfoResult> _future;
  late Future<bool> _hasDownloadFuture;

  Future<ComicInfoResult> _loadComic() async {
    var info = await methods.comicInfo(widget.comicSimple.id);
    var _ = methods.saveViewInfo(info); // 在后台线程保存浏览记录
    return info;
  }

  @override
  void initState() {
    _future = _loadComic();
    _hasDownloadFuture = methods.hasDownload(widget.comicSimple.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.comicSimple.title),
        actions: [
          FutureBuilder(
            future: _future,
            builder: (BuildContext context,
                AsyncSnapshot<ComicInfoResult> snapshot1) {
              if (snapshot1.hasError ||
                  snapshot1.connectionState != ConnectionState.done) {
                return Container();
              }
              return FutureBuilder(
                future: _hasDownloadFuture,
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot2) {
                  if (snapshot2.hasError ||
                      snapshot2.connectionState != ConnectionState.done) {
                    return Container();
                  }
                  if (snapshot2.requireData) {
                    // todo downloading
                    return IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_done),
                    );
                  } else {
                    // todo reload
                    return IconButton(
                      onPressed: () async {
                        var confirm =
                            await confirmDialog(context, "下载", "下载这个漫画吗？");
                        if (confirm) {
                          await methods.downloadComic(widget.comicSimple.id);
                          setState(() {
                            _hasDownloadFuture =
                                methods.hasDownload(widget.comicSimple.id);
                          });
                        }
                      },
                      icon: const Icon(Icons.download),
                    );
                  }
                },
              );
            },
          ),
          ...alwaysInActions(),
        ],
      ),
      floatingActionButton: FutureBuilder(
        future: _future,
        builder:
            (BuildContext context, AsyncSnapshot<ComicInfoResult> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              !snapshot.hasError) {
            return Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 30),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ComicReaderScreen(
                      comic: widget.comicSimple,
                      loadResult: () {
                        return methods.comicPages(widget.comicSimple.id);
                      },
                    );
                  }));
                },
                child: const Icon(Icons.menu_book),
              ),
            );
          }
          return Container();
        },
      ),
      body: ContentBuilder(
        future: _future,
        onRefresh: () async {
          setState(() {
            _future = _loadComic();
          });
        },
        successBuilder:
            (BuildContext context, AsyncSnapshot<ComicInfoResult> snapshot) {
          var item = snapshot.data!;
          var mq = MediaQuery.of(context);
          var imageWidth =
              (mq.size.width < mq.size.height) ? mq.size.width : mq.size.height;
          imageWidth = imageWidth / 2;
          var subColor = Color.alphaBlend(
            Colors.grey.shade500.withAlpha(80),
            (Theme.of(context).textTheme.bodyText1?.color ?? Colors.black),
          );
          return ListView(
            children: [
              Container(height: 20),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: imageWidth,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    child: HorizontalStretchComicImage(
                      url: widget.comicSimple.cover,
                      originSize: Size(
                        coverWidth.toDouble(),
                        coverHeight.toDouble(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  widget.comicSimple.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: subColor,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.calendar_today_outlined,
                        size: 12,
                        color: subColor,
                      ),
                    ),
                    const TextSpan(text: " "),
                    const TextSpan(text: "  "),
                  ],
                )),
              ),
              Container(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Wrap(
                  children: (item.comicInfo.tags.map(_buildTag)).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTag(String tag) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return BrowserScreen(tag: tag);
        }));
      },
      child: Card(
        child: Text.rich(TextSpan(
          style: const TextStyle(fontSize: 10),
          children: [
            WidgetSpan(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Container(
                  color: Colors.grey.withAlpha(20),
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 4, right: 4),
                  child: Text(tag),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
