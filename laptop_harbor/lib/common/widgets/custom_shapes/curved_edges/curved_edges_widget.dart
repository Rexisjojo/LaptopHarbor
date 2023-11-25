import 'package:flutter/material.dart';

import 'curved_edges.dart';

class LHCurvedEdgeWidget extends StatelessWidget {
  const LHCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LHCustomCurvedEdges(),
      child: child,
    );
  }
}