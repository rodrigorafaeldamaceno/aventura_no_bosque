import 'package:aventura_com_bako/models/tutorial_model.dart';
import 'package:flutter/material.dart';

class TutorialCard extends StatefulWidget {
  final int index;
  const TutorialCard(this.index);

  @override
  _TutorialCardState createState() => _TutorialCardState();
}

class _TutorialCardState extends State<TutorialCard> {
  bool isVisible = false;

  void setVisibility(i) {
    if (i != 0) {
      isVisible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Container(
              // Header
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(child: Image.asset('assets/idv.png')),
            ),
            Expanded(
              // Card text
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (cardList[widget.index].imageUrl != null)
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Image.asset(cardList[widget.index].imageUrl),
                        ),
                      Text(
                        cardList[widget.index].cardText,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
