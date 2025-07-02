import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/radio/reciters_list_item.dart';

class RecitersList extends StatelessWidget {
  const RecitersList({super.key});

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
          return RecitersListItem();
        },
        itemCount: 10,
      ),
    );
  }
}
