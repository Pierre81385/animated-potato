import 'package:animated_potato/reqSetup.dart';
import 'package:flutter/material.dart';
import 'package:animated_potato/ClickUpAPI.dart';

//display a list of ClickUp API calls

class ReqListWidget extends StatefulWidget {
  const ReqListWidget({super.key});

  @override
  State<ReqListWidget> createState() => _ReqListWidgetState();
}

class _ReqListWidgetState extends State<ReqListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: clickUpAPI.length,
          itemBuilder: (BuildContext context, int index) {
            final category = clickUpAPI[index]['name'];
            final List item = clickUpAPI[index]['item'];

            return Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(category),
                    subtitle: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: clickUpAPI[index]['item'].length,
                      itemBuilder: (BuildContext context, int i) {
                        return TextButton(
                            onPressed: () {
                              //push to request widget
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ReqSetupWidget(
                                          request: item[i]['request'],
                                          reqName: item[i]['name'].toString(),
                                        )),
                              );
                            },
                            child: Text(item[i]['name'].toString()));
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
