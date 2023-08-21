import 'package:animated_potato/reqList.dart';
import 'package:flutter/material.dart';
import 'apiClass.dart';

class ReqSetupWidget extends StatefulWidget {
  const ReqSetupWidget(
      {super.key, required this.request, required this.reqName});
  final Map<String, dynamic> request;
  final String reqName;

  @override
  State<ReqSetupWidget> createState() => _ReqSetupWidgetState();
}

class _ReqSetupWidgetState extends State<ReqSetupWidget> {
  late Map<String, dynamic> _request;
  late String _name;

  @override
  void initState() {
    _request = widget.request;
    _name = widget.reqName;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _req = Reqst.fromJson(_request);
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text(_name),
            _req.urlInfo.runtimeType == String
                ? Text(_req.urlInfo.toString())
                : Text(_req.urlInfo.raw.toString()),
            TextButton(
                onPressed: () {
                  //push to request widget
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ReqListWidget()),
                  );
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
