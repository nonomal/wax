///
//  Generated code. Do not modify.
//  source: protos/properties.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use savePropertyQueryDescriptor instead')
const SavePropertyQuery$json = const {
  '1': 'SavePropertyQuery',
  '2': const [
    const {'1': 'k', '3': 1, '4': 1, '5': 9, '10': 'k'},
    const {'1': 'v', '3': 2, '4': 1, '5': 9, '10': 'v'},
  ],
};

/// Descriptor for `SavePropertyQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savePropertyQueryDescriptor = $convert.base64Decode('ChFTYXZlUHJvcGVydHlRdWVyeRIMCgFrGAEgASgJUgFrEgwKAXYYAiABKAlSAXY=');
@$core.Deprecated('Use loadPropertyQueryDescriptor instead')
const LoadPropertyQuery$json = const {
  '1': 'LoadPropertyQuery',
  '2': const [
    const {'1': 'k', '3': 1, '4': 1, '5': 9, '10': 'k'},
  ],
};

/// Descriptor for `LoadPropertyQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadPropertyQueryDescriptor = $convert.base64Decode('ChFMb2FkUHJvcGVydHlRdWVyeRIMCgFrGAEgASgJUgFr');
@$core.Deprecated('Use loadPropertyResultDescriptor instead')
const LoadPropertyResult$json = const {
  '1': 'LoadPropertyResult',
  '2': const [
    const {'1': 'v', '3': 1, '4': 1, '5': 9, '10': 'v'},
  ],
};

/// Descriptor for `LoadPropertyResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadPropertyResultDescriptor = $convert.base64Decode('ChJMb2FkUHJvcGVydHlSZXN1bHQSDAoBdhgBIAEoCVIBdg==');
@$core.Deprecated('Use fetchComicQueryDescriptor instead')
const FetchComicQuery$json = const {
  '1': 'FetchComicQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'filterName', '3': 2, '4': 1, '5': 9, '10': 'filterName'},
    const {'1': 'filterValue', '3': 3, '4': 1, '5': 9, '10': 'filterValue'},
    const {'1': 'pageNumber', '3': 4, '4': 1, '5': 3, '10': 'pageNumber'},
  ],
};

/// Descriptor for `FetchComicQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchComicQueryDescriptor = $convert.base64Decode('Cg9GZXRjaENvbWljUXVlcnkSEgoEaG9zdBgBIAEoCVIEaG9zdBIeCgpmaWx0ZXJOYW1lGAIgASgJUgpmaWx0ZXJOYW1lEiAKC2ZpbHRlclZhbHVlGAMgASgJUgtmaWx0ZXJWYWx1ZRIeCgpwYWdlTnVtYmVyGAQgASgDUgpwYWdlTnVtYmVy');
@$core.Deprecated('Use fetchComicResultDescriptor instead')
const FetchComicResult$json = const {
  '1': 'FetchComicResult',
  '2': const [
    const {'1': 'comics', '3': 1, '4': 3, '5': 11, '6': '.ComicSimple', '10': 'comics'},
    const {'1': 'currentPage', '3': 2, '4': 1, '5': 3, '10': 'currentPage'},
    const {'1': 'maxPage', '3': 3, '4': 1, '5': 3, '10': 'maxPage'},
  ],
};

/// Descriptor for `FetchComicResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchComicResultDescriptor = $convert.base64Decode('ChBGZXRjaENvbWljUmVzdWx0EiQKBmNvbWljcxgBIAMoCzIMLkNvbWljU2ltcGxlUgZjb21pY3MSIAoLY3VycmVudFBhZ2UYAiABKANSC2N1cnJlbnRQYWdlEhgKB21heFBhZ2UYAyABKANSB21heFBhZ2U=');
@$core.Deprecated('Use comicSimpleDescriptor instead')
const ComicSimple$json = const {
  '1': 'ComicSimple',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'favouriteId', '3': 4, '4': 1, '5': 3, '10': 'favouriteId'},
  ],
};

/// Descriptor for `ComicSimple`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicSimpleDescriptor = $convert.base64Decode('CgtDb21pY1NpbXBsZRIOCgJpZBgBIAEoA1ICaWQSFAoFY292ZXIYAiABKAlSBWNvdmVyEhQKBXRpdGxlGAMgASgJUgV0aXRsZRIgCgtmYXZvdXJpdGVJZBgEIAEoA1ILZmF2b3VyaXRlSWQ=');
@$core.Deprecated('Use comicInfoQueryDescriptor instead')
const ComicInfoQuery$json = const {
  '1': 'ComicInfoQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `ComicInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicInfoQueryDescriptor = $convert.base64Decode('Cg5Db21pY0luZm9RdWVyeRISCgRob3N0GAEgASgJUgRob3N0Eg4KAmlkGAIgASgDUgJpZA==');
@$core.Deprecated('Use comicInfoResultDescriptor instead')
const ComicInfoResult$json = const {
  '1': 'ComicInfoResult',
  '2': const [
    const {'1': 'comicInfo', '3': 1, '4': 1, '5': 11, '6': '.ComicInfo', '10': 'comicInfo'},
    const {'1': 'uploader', '3': 2, '4': 1, '5': 11, '6': '.Uploader', '10': 'uploader'},
  ],
};

/// Descriptor for `ComicInfoResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicInfoResultDescriptor = $convert.base64Decode('Cg9Db21pY0luZm9SZXN1bHQSKAoJY29taWNJbmZvGAEgASgLMgouQ29taWNJbmZvUgljb21pY0luZm8SJQoIdXBsb2FkZXIYAiABKAsyCS5VcGxvYWRlclIIdXBsb2FkZXI=');
@$core.Deprecated('Use comicInfoDescriptor instead')
const ComicInfo$json = const {
  '1': 'ComicInfo',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 3, '5': 9, '10': 'labels'},
    const {'1': 'tags', '3': 2, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ComicInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicInfoDescriptor = $convert.base64Decode('CglDb21pY0luZm8SFgoGbGFiZWxzGAEgAygJUgZsYWJlbHMSEgoEdGFncxgCIAMoCVIEdGFncxIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use uploaderDescriptor instead')
const Uploader$json = const {
  '1': 'Uploader',
};

/// Descriptor for `Uploader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploaderDescriptor = $convert.base64Decode('CghVcGxvYWRlcg==');
@$core.Deprecated('Use comicPageDescriptor instead')
const ComicPage$json = const {
  '1': 'ComicPage',
  '2': const [
    const {'1': 'caption', '3': 1, '4': 1, '5': 9, '10': 'caption'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ComicPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicPageDescriptor = $convert.base64Decode('CglDb21pY1BhZ2USGAoHY2FwdGlvbhgBIAEoCVIHY2FwdGlvbhIQCgN1cmwYAiABKAlSA3VybA==');
@$core.Deprecated('Use comicPagesResultDescriptor instead')
const ComicPagesResult$json = const {
  '1': 'ComicPagesResult',
  '2': const [
    const {'1': 'pages', '3': 1, '4': 3, '5': 11, '6': '.ComicPage', '10': 'pages'},
  ],
};

/// Descriptor for `ComicPagesResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicPagesResultDescriptor = $convert.base64Decode('ChBDb21pY1BhZ2VzUmVzdWx0EiAKBXBhZ2VzGAEgAygLMgouQ29taWNQYWdlUgVwYWdlcw==');
@$core.Deprecated('Use cacheImageQueryDescriptor instead')
const CacheImageQuery$json = const {
  '1': 'CacheImageQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `CacheImageQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheImageQueryDescriptor = $convert.base64Decode('Cg9DYWNoZUltYWdlUXVlcnkSEgoEaG9zdBgBIAEoCVIEaG9zdBIQCgN1cmwYAiABKAlSA3VybA==');
@$core.Deprecated('Use cacheImageResultDescriptor instead')
const CacheImageResult$json = const {
  '1': 'CacheImageResult',
  '2': const [
    const {'1': 'localPath', '3': 1, '4': 1, '5': 9, '10': 'localPath'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `CacheImageResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheImageResultDescriptor = $convert.base64Decode('ChBDYWNoZUltYWdlUmVzdWx0EhwKCWxvY2FsUGF0aBgBIAEoCVIJbG9jYWxQYXRoEhQKBXdpZHRoGAIgASgFUgV3aWR0aBIWCgZoZWlnaHQYAyABKAVSBmhlaWdodA==');
@$core.Deprecated('Use autoCleanQueryDescriptor instead')
const AutoCleanQuery$json = const {
  '1': 'AutoCleanQuery',
  '2': const [
    const {'1': 'expire', '3': 1, '4': 1, '5': 3, '10': 'expire'},
  ],
};

/// Descriptor for `AutoCleanQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoCleanQueryDescriptor = $convert.base64Decode('Cg5BdXRvQ2xlYW5RdWVyeRIWCgZleHBpcmUYASABKANSBmV4cGlyZQ==');
@$core.Deprecated('Use httpGetQueryDescriptor instead')
const HttpGetQuery$json = const {
  '1': 'HttpGetQuery',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `HttpGetQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpGetQueryDescriptor = $convert.base64Decode('CgxIdHRwR2V0UXVlcnkSEAoDdXJsGAEgASgJUgN1cmw=');
@$core.Deprecated('Use httpGetResultDescriptor instead')
const HttpGetResult$json = const {
  '1': 'HttpGetResult',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `HttpGetResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpGetResultDescriptor = $convert.base64Decode('Cg1IdHRwR2V0UmVzdWx0EhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQ=');
@$core.Deprecated('Use comicSearchQueryDescriptor instead')
const ComicSearchQuery$json = const {
  '1': 'ComicSearchQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'query', '3': 2, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'pageNumber', '3': 3, '4': 1, '5': 3, '10': 'pageNumber'},
  ],
};

/// Descriptor for `ComicSearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicSearchQueryDescriptor = $convert.base64Decode('ChBDb21pY1NlYXJjaFF1ZXJ5EhIKBGhvc3QYASABKAlSBGhvc3QSFAoFcXVlcnkYAiABKAlSBXF1ZXJ5Eh4KCnBhZ2VOdW1iZXIYAyABKANSCnBhZ2VOdW1iZXI=');
@$core.Deprecated('Use userRegisterQueryDescriptor instead')
const UserRegisterQuery$json = const {
  '1': 'UserRegisterQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'sex', '3': 5, '4': 1, '5': 9, '10': 'sex'},
    const {'1': 'pass', '3': 6, '4': 1, '5': 9, '10': 'pass'},
    const {'1': 'passAgain', '3': 7, '4': 1, '5': 9, '10': 'passAgain'},
  ],
};

/// Descriptor for `UserRegisterQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterQueryDescriptor = $convert.base64Decode('ChFVc2VyUmVnaXN0ZXJRdWVyeRISCgRob3N0GAEgASgJUgRob3N0EhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIaCghuaWNrbmFtZRgDIAEoCVIIbmlja25hbWUSFAoFZW1haWwYBCABKAlSBWVtYWlsEhAKA3NleBgFIAEoCVIDc2V4EhIKBHBhc3MYBiABKAlSBHBhc3MSHAoJcGFzc0FnYWluGAcgASgJUglwYXNzQWdhaW4=');
@$core.Deprecated('Use userLoginQueryDescriptor instead')
const UserLoginQuery$json = const {
  '1': 'UserLoginQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserLoginQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginQueryDescriptor = $convert.base64Decode('Cg5Vc2VyTG9naW5RdWVyeRISCgRob3N0GAEgASgJUgRob3N0EhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use isProDescriptor instead')
const IsPro$json = const {
  '1': 'IsPro',
  '2': const [
    const {'1': 'isPro', '3': 1, '4': 1, '5': 8, '10': 'isPro'},
    const {'1': 'expire', '3': 2, '4': 1, '5': 3, '10': 'expire'},
  ],
};

/// Descriptor for `IsPro`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isProDescriptor = $convert.base64Decode('CgVJc1BybxIUCgVpc1BybxgBIAEoCFIFaXNQcm8SFgoGZXhwaXJlGAIgASgDUgZleHBpcmU=');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use puffDescriptor instead')
const Puff$json = const {
  '1': 'Puff',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `Puff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List puffDescriptor = $convert.base64Decode('CgRQdWZmEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use pushToDownloadsDescriptor instead')
const PushToDownloads$json = const {
  '1': 'PushToDownloads',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'comics', '3': 2, '4': 3, '5': 11, '6': '.ComicSimple', '10': 'comics'},
  ],
};

/// Descriptor for `PushToDownloads`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushToDownloadsDescriptor = $convert.base64Decode('Cg9QdXNoVG9Eb3dubG9hZHMSEgoEaG9zdBgBIAEoCVIEaG9zdBIkCgZjb21pY3MYAiADKAsyDC5Db21pY1NpbXBsZVIGY29taWNz');
@$core.Deprecated('Use comicDownloadsResDescriptor instead')
const ComicDownloadsRes$json = const {
  '1': 'ComicDownloadsRes',
  '2': const [
    const {'1': 'downloads', '3': 1, '4': 3, '5': 11, '6': '.ComicDownloadDto', '10': 'downloads'},
  ],
};

/// Descriptor for `ComicDownloadsRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicDownloadsResDescriptor = $convert.base64Decode('ChFDb21pY0Rvd25sb2Fkc1JlcxIvCglkb3dubG9hZHMYASADKAsyES5Db21pY0Rvd25sb2FkRHRvUglkb3dubG9hZHM=');
@$core.Deprecated('Use comicDownloadDtoDescriptor instead')
const ComicDownloadDto$json = const {
  '1': 'ComicDownloadDto',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'status', '3': 5, '4': 1, '5': 3, '10': 'status'},
    const {'1': 'coverDownload', '3': 6, '4': 1, '5': 8, '10': 'coverDownload'},
    const {'1': 'fetchedInfo', '3': 7, '4': 1, '5': 8, '10': 'fetchedInfo'},
    const {'1': 'fetchPage', '3': 8, '4': 1, '5': 8, '10': 'fetchPage'},
    const {'1': 'pageCount', '3': 9, '4': 1, '5': 3, '10': 'pageCount'},
    const {'1': 'pageDown', '3': 10, '4': 1, '5': 3, '10': 'pageDown'},
    const {'1': 'deleting', '3': 11, '4': 1, '5': 8, '10': 'deleting'},
    const {'1': 'coverPath', '3': 12, '4': 1, '5': 9, '10': 'coverPath'},
  ],
};

/// Descriptor for `ComicDownloadDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicDownloadDtoDescriptor = $convert.base64Decode('ChBDb21pY0Rvd25sb2FkRHRvEhIKBGhvc3QYASABKAlSBGhvc3QSDgoCaWQYAiABKANSAmlkEhQKBWNvdmVyGAMgASgJUgVjb3ZlchIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSFgoGc3RhdHVzGAUgASgDUgZzdGF0dXMSJAoNY292ZXJEb3dubG9hZBgGIAEoCFINY292ZXJEb3dubG9hZBIgCgtmZXRjaGVkSW5mbxgHIAEoCFILZmV0Y2hlZEluZm8SHAoJZmV0Y2hQYWdlGAggASgIUglmZXRjaFBhZ2USHAoJcGFnZUNvdW50GAkgASgDUglwYWdlQ291bnQSGgoIcGFnZURvd24YCiABKANSCHBhZ2VEb3duEhoKCGRlbGV0aW5nGAsgASgIUghkZWxldGluZxIcCgljb3ZlclBhdGgYDCABKAlSCWNvdmVyUGF0aA==');
@$core.Deprecated('Use downloadInfoQueryDescriptor instead')
const DownloadInfoQuery$json = const {
  '1': 'DownloadInfoQuery',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DownloadInfoQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadInfoQueryDescriptor = $convert.base64Decode('ChFEb3dubG9hZEluZm9RdWVyeRIOCgJpZBgBIAEoA1ICaWQ=');
@$core.Deprecated('Use comicDownloadInfoDtoDescriptor instead')
const ComicDownloadInfoDto$json = const {
  '1': 'ComicDownloadInfoDto',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'status', '3': 5, '4': 1, '5': 3, '10': 'status'},
    const {'1': 'coverDownload', '3': 6, '4': 1, '5': 8, '10': 'coverDownload'},
    const {'1': 'pageCount', '3': 7, '4': 1, '5': 3, '10': 'pageCount'},
    const {'1': 'pageDown', '3': 8, '4': 1, '5': 3, '10': 'pageDown'},
    const {'1': 'deleting', '3': 9, '4': 1, '5': 8, '10': 'deleting'},
    const {'1': 'labels', '3': 10, '4': 3, '5': 9, '10': 'labels'},
    const {'1': 'tags', '3': 11, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'description', '3': 12, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ComicDownloadInfoDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comicDownloadInfoDtoDescriptor = $convert.base64Decode('ChRDb21pY0Rvd25sb2FkSW5mb0R0bxISCgRob3N0GAEgASgJUgRob3N0Eg4KAmlkGAIgASgDUgJpZBIUCgVjb3ZlchgDIAEoCVIFY292ZXISFAoFdGl0bGUYBCABKAlSBXRpdGxlEhYKBnN0YXR1cxgFIAEoA1IGc3RhdHVzEiQKDWNvdmVyRG93bmxvYWQYBiABKAhSDWNvdmVyRG93bmxvYWQSHAoJcGFnZUNvdW50GAcgASgDUglwYWdlQ291bnQSGgoIcGFnZURvd24YCCABKANSCHBhZ2VEb3duEhoKCGRlbGV0aW5nGAkgASgIUghkZWxldGluZxIWCgZsYWJlbHMYCiADKAlSBmxhYmVscxISCgR0YWdzGAsgAygJUgR0YWdzEiAKC2Rlc2NyaXB0aW9uGAwgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use downloadComicPagesDescriptor instead')
const DownloadComicPages$json = const {
  '1': 'DownloadComicPages',
  '2': const [
    const {'1': 'pages', '3': 1, '4': 3, '5': 11, '6': '.DownloadComicPageDto', '10': 'pages'},
  ],
};

/// Descriptor for `DownloadComicPages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadComicPagesDescriptor = $convert.base64Decode('ChJEb3dubG9hZENvbWljUGFnZXMSKwoFcGFnZXMYASADKAsyFS5Eb3dubG9hZENvbWljUGFnZUR0b1IFcGFnZXM=');
@$core.Deprecated('Use downloadComicPageDtoDescriptor instead')
const DownloadComicPageDto$json = const {
  '1': 'DownloadComicPageDto',
  '2': const [
    const {'1': 'width', '3': 1, '4': 1, '5': 3, '10': 'width'},
    const {'1': 'height', '3': 2, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'format', '3': 3, '4': 1, '5': 9, '10': 'format'},
    const {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'caption', '3': 6, '4': 1, '5': 9, '10': 'caption'},
  ],
};

/// Descriptor for `DownloadComicPageDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadComicPageDtoDescriptor = $convert.base64Decode('ChREb3dubG9hZENvbWljUGFnZUR0bxIUCgV3aWR0aBgBIAEoA1IFd2lkdGgSFgoGaGVpZ2h0GAIgASgDUgZoZWlnaHQSFgoGZm9ybWF0GAMgASgJUgZmb3JtYXQSEgoEcGF0aBgEIAEoCVIEcGF0aBIQCgN1cmwYBSABKAlSA3VybBIYCgdjYXB0aW9uGAYgASgJUgdjYXB0aW9u');
@$core.Deprecated('Use intValueDescriptor instead')
const IntValue$json = const {
  '1': 'IntValue',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `IntValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intValueDescriptor = $convert.base64Decode('CghJbnRWYWx1ZRIUCgV2YWx1ZRgBIAEoA1IFdmFsdWU=');
@$core.Deprecated('Use boolValueDescriptor instead')
const BoolValue$json = const {
  '1': 'BoolValue',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

/// Descriptor for `BoolValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolValueDescriptor = $convert.base64Decode('CglCb29sVmFsdWUSFAoFdmFsdWUYASABKAhSBXZhbHVl');
@$core.Deprecated('Use createFavoritesPartitionQueryDescriptor instead')
const CreateFavoritesPartitionQuery$json = const {
  '1': 'CreateFavoritesPartitionQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateFavoritesPartitionQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFavoritesPartitionQueryDescriptor = $convert.base64Decode('Ch1DcmVhdGVGYXZvcml0ZXNQYXJ0aXRpb25RdWVyeRISCgRob3N0GAEgASgJUgRob3N0EhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use favoritesPartitionsQueryDescriptor instead')
const FavoritesPartitionsQuery$json = const {
  '1': 'FavoritesPartitionsQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `FavoritesPartitionsQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoritesPartitionsQueryDescriptor = $convert.base64Decode('ChhGYXZvcml0ZXNQYXJ0aXRpb25zUXVlcnkSEgoEaG9zdBgBIAEoCVIEaG9zdA==');
@$core.Deprecated('Use favoritesPartitionResultDescriptor instead')
const FavoritesPartitionResult$json = const {
  '1': 'FavoritesPartitionResult',
  '2': const [
    const {'1': 'partitionList', '3': 1, '4': 3, '5': 11, '6': '.FavoritesPartitionDto', '10': 'partitionList'},
  ],
};

/// Descriptor for `FavoritesPartitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoritesPartitionResultDescriptor = $convert.base64Decode('ChhGYXZvcml0ZXNQYXJ0aXRpb25SZXN1bHQSPAoNcGFydGl0aW9uTGlzdBgBIAMoCzIWLkZhdm9yaXRlc1BhcnRpdGlvbkR0b1INcGFydGl0aW9uTGlzdA==');
@$core.Deprecated('Use favoritesPartitionDtoDescriptor instead')
const FavoritesPartitionDto$json = const {
  '1': 'FavoritesPartitionDto',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `FavoritesPartitionDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoritesPartitionDtoDescriptor = $convert.base64Decode('ChVGYXZvcml0ZXNQYXJ0aXRpb25EdG8SDgoCaWQYASABKANSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use renameFavoritesPartitionQueryDescriptor instead')
const RenameFavoritesPartitionQuery$json = const {
  '1': 'RenameFavoritesPartitionQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `RenameFavoritesPartitionQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameFavoritesPartitionQueryDescriptor = $convert.base64Decode('Ch1SZW5hbWVGYXZvcml0ZXNQYXJ0aXRpb25RdWVyeRISCgRob3N0GAEgASgJUgRob3N0Eg4KAmlkGAIgASgDUgJpZBISCgRuYW1lGAMgASgJUgRuYW1l');
@$core.Deprecated('Use favoriteComicQueryDescriptor instead')
const FavoriteComicQuery$json = const {
  '1': 'FavoriteComicQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'comicId', '3': 2, '4': 1, '5': 3, '10': 'comicId'},
    const {'1': 'partitionId', '3': 3, '4': 1, '5': 3, '10': 'partitionId'},
  ],
};

/// Descriptor for `FavoriteComicQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoriteComicQueryDescriptor = $convert.base64Decode('ChJGYXZvcml0ZUNvbWljUXVlcnkSEgoEaG9zdBgBIAEoCVIEaG9zdBIYCgdjb21pY0lkGAIgASgDUgdjb21pY0lkEiAKC3BhcnRpdGlvbklkGAMgASgDUgtwYXJ0aXRpb25JZA==');
@$core.Deprecated('Use favoriteListQueryDescriptor instead')
const FavoriteListQuery$json = const {
  '1': 'FavoriteListQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'partitionId', '3': 2, '4': 1, '5': 3, '10': 'partitionId'},
    const {'1': 'page', '3': 3, '4': 1, '5': 3, '10': 'page'},
  ],
};

/// Descriptor for `FavoriteListQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoriteListQueryDescriptor = $convert.base64Decode('ChFGYXZvcml0ZUxpc3RRdWVyeRISCgRob3N0GAEgASgJUgRob3N0EiAKC3BhcnRpdGlvbklkGAIgASgDUgtwYXJ0aXRpb25JZBISCgRwYWdlGAMgASgDUgRwYWdl');
@$core.Deprecated('Use loginUserQueryDescriptor instead')
const LoginUserQuery$json = const {
  '1': 'LoginUserQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `LoginUserQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginUserQueryDescriptor = $convert.base64Decode('Cg5Mb2dpblVzZXJRdWVyeRISCgRob3N0GAEgASgJUgRob3N0');
@$core.Deprecated('Use loginUserDescriptor instead')
const LoginUser$json = const {
  '1': 'LoginUser',
  '2': const [
    const {'1': 'nicename', '3': 1, '4': 1, '5': 9, '10': 'nicename'},
  ],
};

/// Descriptor for `LoginUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginUserDescriptor = $convert.base64Decode('CglMb2dpblVzZXISGgoIbmljZW5hbWUYASABKAlSCG5pY2VuYW1l');
@$core.Deprecated('Use deleteFavoriteQueryDescriptor instead')
const DeleteFavoriteQuery$json = const {
  '1': 'DeleteFavoriteQuery',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'favouriteId', '3': 2, '4': 1, '5': 3, '10': 'favouriteId'},
  ],
};

/// Descriptor for `DeleteFavoriteQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFavoriteQueryDescriptor = $convert.base64Decode('ChNEZWxldGVGYXZvcml0ZVF1ZXJ5EhIKBGhvc3QYASABKAlSBGhvc3QSIAoLZmF2b3VyaXRlSWQYAiABKANSC2Zhdm91cml0ZUlk');
