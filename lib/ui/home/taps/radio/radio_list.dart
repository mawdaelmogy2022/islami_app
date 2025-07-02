import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/radio/radio_list_item.dart';

class RadioList extends StatefulWidget {
  RadioList({super.key});

  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  bool soundplay = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: height * .02,
          );
        },
        itemBuilder: (context, index) {
          return RadioListItem();
        },
        itemCount: 10,
      ),
    );
  }
}
