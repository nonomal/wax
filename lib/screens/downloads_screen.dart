import 'package:flutter/material.dart';
import 'package:wax/basic/commons.dart';
import 'package:wax/basic/methods.dart';
import 'package:wax/screens/comic_info_screen.dart';
import 'package:wax/screens/components/comic_info_card.dart';
import 'package:wax/screens/components/content_builder.dart';

import '../configs/download_thread_count.dart';
import '../protos/properties.pb.dart';
import 'components/download_info_card.dart';
import 'download_info_screen.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  Future<ComicDownloadsRes> _future = methods.downloads();
  Key _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("下载"),
        actions: [
          threadCountButton(),
          IconButton(
            onPressed: () async {
              await methods.resetDownload();
              setState(() {
                _future = methods.downloads();
                _key = UniqueKey();
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: ContentBuilder(
        key: _key,
        future: _future,
        onRefresh: () async {},
        successBuilder: (
          BuildContext context,
          AsyncSnapshot<ComicDownloadsRes> snapshot,
        ) {
          final downloads = snapshot.requireData.downloads;
          return ListView(children: [
            ...downloads.map(_downloadCard),
          ]);
        },
      ),
    );
  }

  Widget _downloadCard(ComicDownloadDto e) {
    return InkWell(
      onTap: () {
        if (e.deleting || !e.fetchedInfo || !e.fetchPage) {
          defaultToast(context, "此下载还未获取漫画信息\n已跳转到在线页面");
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return ComicInfoScreen(
              ComicSimple(
                id: e.id,
                cover: e.cover,
                title: e.title,
              ),
            );
          }));
        } else {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return DownloadInfoScreen(
              e,
            );
          }));
        }
      },
      child: DownloadInfoCard(e),
    );
  }

  Widget threadCountButton() {
    return MaterialButton(
      onPressed: () async {
        await chooseDownloadThread(context);
        setState(() {});
      },
      minWidth: 0,
      child: Text(
        "$downloadThreadCount线程",
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
