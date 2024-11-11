import 'package:flutter/material.dart';

import 'package:babysitterapp/core/helper/goto_page.dart';

import 'package:babysitterapp/views/(settings_JK_Gerald)/profile/view.dart';

Widget babySitterCardButton(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: () {
              goToPage(context, Profile(), 'rightToLeftWithFade');
            },
            child: const Text('View profile'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Message'),
          )
        ],
      ),
    );
