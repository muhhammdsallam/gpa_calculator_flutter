import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator_flutter/constants.dart';
import 'package:gpa_calculator_flutter/list_item.dart';
import 'appbar_theme.dart' as appBarColor;
import 'text_widget.dart';
import 'list_items.dart';
import 'list_item_widget.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListItem> courses = List.from(listItems);

  void removeItem(int index) {
    //final removedItem = items[index];
    final item = courses.removeAt(index);
    listKey.currentState!.removeItem(index,
        (context, animation) => ListItemWidget(item: item, onClicked: () {}));
  }

  void insertItem() {
    final newIndex = 0;
    final newItem = ListItem(title: 'Course');

    courses.insert(newIndex, newItem);
    listKey.currentState!.insertItem(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('GPA Calculator'),
        centerTitle: true,
        flexibleSpace: appBarColor.AppBarTheme(),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Flexible(
                  child: TextWidget(
                    label: 'Total GPA',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: TextWidget(
                  label: 'Total Hours',
                )),
              ],
            )),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    //color: Color(0x50ffbdad),
                    //border: Border.all(color: kRightAppBarColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                //color: Colors.grey.shade200,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: AnimatedList(
                          key: listKey,
                          initialItemCount: courses.length,
                          itemBuilder: (context, index, animation) =>
                              ListItemWidget(
                                  item: courses[index],
                                  onClicked: () => removeItem(index))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        insertItem();
                      },
                      child: Container(
                        //margin: EdgeInsets.only(left: 8, right: 8),
                        //padding: EdgeInsets.only(left: 110, right: 110),
                        decoration: DottedDecoration(
                          shape: Shape.box,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.plus_circle,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add Course',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      child: Text(
                        'Calculate',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: kLeftAppBarColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)))),
                )
                //style: ,)
              ],
            )),
            const Divider(
              //height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: kRightAppBarColor,
            ),
            Expanded(
                child: Row(
              children: [],
            ))
          ],
        ),
      ),
    );
  }
}
