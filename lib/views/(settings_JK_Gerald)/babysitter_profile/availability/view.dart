import 'package:flutter/material.dart';

import 'package:babysitterapp/core/constants/styles.dart';

import 'package:babysitterapp/views/(settings_JK_Gerald)/babysitter_profile/availability/widgets/info.dart';
import 'package:babysitterapp/views/(settings_JK_Gerald)/babysitter_profile/widgets/section_title.dart';

class AvailabilityView extends StatelessWidget with GlobalStyles {
  AvailabilityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD0D0D0),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: GlobalStyles.defaultContentPadding,
      child: Column(
        children: <Widget>[
          SectionTitle(
            text: 'Availability',
          ),
          Info(),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}
