import 'package:flutter/material.dart';

class Reqst {
  String method;
  List<Header> header;
  Body body;
  dynamic urlInfo; // Allow for both string and object URLs

  Reqst({
    required this.method,
    required this.header,
    required this.body,
    required this.urlInfo,
  });

  factory Reqst.fromJson(Map<String, dynamic> json) {
    return Reqst(
      method: json['method'] ?? '',
      header: (json['header'] as List<dynamic>?)
              ?.map((header) => Header.fromJson(header))
              .toList() ??
          [],
      body: Body.fromJson(json['body'] ?? {}),
      urlInfo: json['url'] is String
          ? json['url']
          : UrlInfo.fromJson(json['url'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'method': method,
      'header': header.map((header) => header.toJson()).toList(),
      'body': body.toJson(),
      'url': urlInfo is UrlInfo ? urlInfo.toJson() : urlInfo,
    };
  }
}

class Body {
  String mode;
  String raw;

  Body({
    required this.mode,
    required this.raw,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    return Body(
      mode: json['mode'] ?? '',
      raw: json['raw'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mode': mode,
      'raw': raw,
    };
  }
}

class Header {
  String key;
  String name;
  String value;
  String type;

  Header({
    required this.key,
    required this.name,
    required this.value,
    required this.type,
  });

  factory Header.fromJson(Map<String, dynamic> json) {
    return Header(
      key: json['key'] ?? '',
      name: json['name'] ?? '',
      value: json['value'] ?? '',
      type: json['type'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'value': value,
      'type': type,
    };
  }
}

class UrlInfo {
  String raw;
  String protocol;
  List<String> host;
  List<String> path;
  List<Query> query;

  UrlInfo({
    required this.raw,
    required this.protocol,
    required this.host,
    required this.path,
    required this.query,
  });

  factory UrlInfo.fromJson(Map<String, dynamic> json) {
    return UrlInfo(
      raw: json['raw'] ?? '',
      protocol: json['protocol'] ?? '',
      host: (json['host'] as List<dynamic>?)
              ?.map((item) => item.toString())
              .toList() ??
          [],
      path: (json['path'] as List<dynamic>?)
              ?.map((item) => item.toString())
              .toList() ??
          [],
      query: (json['query'] as List<dynamic>?)
              ?.map((query) => Query.fromJson(query))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'raw': raw,
      'protocol': protocol,
      'host': host,
      'path': path,
      'query': query.map((query) => query.toJson()).toList(),
    };
  }
}

class Query {
  String key;
  String value;
  bool disabled;

  Query({
    required this.key,
    required this.value,
    required this.disabled,
  });

  factory Query.fromJson(Map<String, dynamic> json) {
    return Query(
      key: json['key'] ?? '',
      value: json['value'] ?? '',
      disabled: json['disabled'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
      'disabled': disabled,
    };
  }
}
