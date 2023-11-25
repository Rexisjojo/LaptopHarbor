import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class LHPrimaryHeaderContainer extends StatelessWidget {
  const LHPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LHCurvedEdgeWidget(
      child: Container(
        color: LHColors.primary,
        padding: const EdgeInsets.only(bottom: 0),

        /// ---- If [size.isFinite': is not true.in Stack] error occurred -> Read README.md file at []
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(
                  top: -150,right: -250,child: LHCircularContainer(backgroundColor: LHColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,right: -300,child: LHCircularContainer(backgroundColor: LHColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}