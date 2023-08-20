import 'package:flutter/material.dart';
import 'package:animated_potato/ClickUpAPI.dart';

//display a list of ClickUp API calls

class CallListWidget extends StatefulWidget {
  const CallListWidget({super.key});

  @override
  State<CallListWidget> createState() => _CallListWidgetState();
}

class _CallListWidgetState extends State<CallListWidget> {
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
                        return Text(item[i]['name'].toString());
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
