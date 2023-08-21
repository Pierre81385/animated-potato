import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'apiClass.dart';

class ReqSenderWidget extends StatefulWidget {
  const ReqSenderWidget({super.key});

  @override
  State<ReqSenderWidget> createState() => _ReqSenderWidgetState();
}

class _ReqSenderWidgetState extends State<ReqSenderWidget> {
  void main() async {
    final request = Reqst(
      method: 'POST',
      header: [
        Header(
            key: 'Content-Type',
            name: 'Content-Type',
            value: 'application/json',
            type: 'text')
      ],
      body: Body(mode: 'raw', raw: '{"key": "value"}'),
      urlInfo: UrlInfo(
          raw: 'https://api.example.com/endpoint',
          protocol: 'https',
          host: [],
          path: [],
          query: []),
    );

    final requestJson = request.toJson();

    final response = await http.post(
      Uri.parse(requestJson['url']), // Use the URL from the request
      headers: {
        'Content-Type': 'application/json',
      },
      body: requestJson['body'], // Use the body from the request
    );

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
