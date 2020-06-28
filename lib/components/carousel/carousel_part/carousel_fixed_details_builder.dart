import 'dart:async';

import 'package:notifier/components/carousel/model/movie_details.dart';
import 'package:flutter/material.dart';

import 'details_card.dart';

class FixedDetailsBuilder extends StatefulWidget {
  final pageController, index;
  double value = 1.0;
  FixedDetailsBuilder({this.pageController, this.index});

  @override
  _FixedDetailsBuilderState createState() => _FixedDetailsBuilderState();
}

class _FixedDetailsBuilderState extends State<FixedDetailsBuilder> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.pageController,
      builder: (context, child) {
        //print(widget.pageController.hasClients);
        if (widget.pageController.hasClients) {
          widget.value = widget.pageController.page - widget.index;
          widget.value = (1 - (widget.value.abs() * 5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 40),
                child: Opacity(
                  opacity: widget.value,
                  child: DetailsCard(
                    title: movieList[widget.index].title,
                    year: movieList[widget.index].year,
                    stroy: movieList[widget.index].stroy,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
