import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfetDetails extends StatefulWidget {
  dynamic profetData;
  ProfetDetails({Key? key, required this.profetData}) : super(key: key);

  @override
  State<ProfetDetails> createState() => _ProfetDetailsState();
}

class _ProfetDetailsState extends State<ProfetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const  EdgeInsets.all(20),
           width: Constants.getWidth(context),
        height: Constants.getHeight(context),
        child: Text(widget.profetData['history[Topic]'] == "N/A" ? "" :widget.profetData['history[Topic]'] ),
        ),
      ),
    );
  }
}