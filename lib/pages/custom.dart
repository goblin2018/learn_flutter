import 'package:flutter/material.dart';

class CustomWidget extends LeafRenderObjectWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCustomObject();
  }

  @override
  void updateRenderObject(BuildContext context, RenderCustomObject renderObject) {
    super.updateRenderObject(context, renderObject);
  }
}

class RenderCustomObject extends RenderBox {
  @override
  void performLayout() {}

  @override
  void paint(PaintingContext context, Offset offset) {}
}
