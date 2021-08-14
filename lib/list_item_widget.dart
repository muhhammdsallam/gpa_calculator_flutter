import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'text_widget.dart';
import 'list_item.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final VoidCallback? onClicked;

  ListItemWidget({required this.item, required this.onClicked, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Flexible(
                        child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: InputBorder.none,
                              labelText: 'Course Name',
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                            style: TextStyle(color: Colors.grey.shade700))),
                    Divider(
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.grey.shade400,
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: onClicked,
              icon: Icon(
                CupertinoIcons.xmark_circle,
                color: kRightAppBarColor,
                size: 35,
              ),
            ),
          ],
        ));
  }
}
