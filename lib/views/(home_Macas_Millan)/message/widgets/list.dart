import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:babysitterapp/core/constants.dart';
import 'package:babysitterapp/core/helpers.dart';

import 'package:babysitterapp/views/home.dart';

class ConversationList extends StatefulWidget {
  const ConversationList({
    super.key,
    required this.name,
    required this.messageText,
    required this.imageUrl,
    required this.time,
    required this.isMessageRead,
    required this.number,
  });

  final String name;
  final String messageText;
  final String imageUrl;
  final DateTime time;
  final bool isMessageRead;
  final String number;

  @override
  ConversationListState createState() => ConversationListState();
}

class ConversationListState extends State<ConversationList> with GlobalStyles {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goToPage(
          context,
          MessageDetailScreen(
            name: widget.name,
            number: widget.number,
            image: '',
          ),
          'rightToLeftWithFade',
        );
      },
      child: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(GlobalStyles.defaultPadding),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ColoredBox(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            widget.messageText,
                            style: TextStyle(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              DateFormat('hh:mm a').format(widget.time),
              style: TextStyle(
                  color: const Color(0xFF1686AA),
                  fontSize: 15,
                  fontWeight: widget.isMessageRead
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
