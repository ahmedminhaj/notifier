import 'package:notifier/components/buttons/primary_button.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/decoration_design/card_design.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {
  final List items;
  final String listTitle;
  BasicList({
    this.items,
    this.listTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor,
            borderRadius: BorderRadius.circular(ShapeStyle.roundedCircle),
            boxShadow: [
              BoxShadow(
                  color: ThemeColors.grey5,
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(3, 3))
            ],
          ),
          child: Text(
            listTitle,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CardDesign(
                customWidget: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SubTitle(
                        subtitle: "${items[index]}",
                      ),
                      PrimaryButton(
                        color: ThemeColors.primaryButtonColor,
                        shadowColor: ThemeColors.grey5,
                        buttonShape: ShapeStyle.roundedCircle,
                        buttonText: "${items[index]}",
                        onPressed: () {
                          Navigator.of(context).pushNamed('/${items[index]}');
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
