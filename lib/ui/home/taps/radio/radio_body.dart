import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/radio/choose_widget.dart';
import 'package:islami_app/ui/home/taps/radio/radio_list.dart';
import 'package:islami_app/ui/home/taps/radio/reciters_list.dart';

class RadioBody extends StatefulWidget {
  const RadioBody({super.key});

  @override
  State<RadioBody> createState() => _RadioBodyState();
}

class _RadioBodyState extends State<RadioBody> {
  bool isradioselected = true;
  bool isselected = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .04),
      child: Column(
        children: [
          Row(
            children: [
              ChooseWidget(
                isselected: isselected,
                text: 'Radio',
                onclicked: () {
                  isselected = true;
                  isradioselected = true;
                  setState(() {});
                },
              ),
              const Spacer(),
              ChooseWidget(
                isselected: !isselected,
                text: 'Reciters',
                onclicked: () {
                  isselected = false;
                  isradioselected = false;
                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(
            height: height * .02,
          ),
          isradioselected == true ? RadioList() : const RecitersList()
        ],
      ),
    );
  }
}
