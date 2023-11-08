import 'package:flutter/material.dart';
import 'package:tools/src/pages/local_image.dart';
import 'package:tools/src/pages/my_gridview.dart';
import 'package:tools/src/pages/my_pageview.dart';
import 'package:tools/src/widgets/my_slider.dart';
import 'package:tools/src/widgets/my_stack.dart';

import 'my_items.dart';

class Screens {
  List<MyItems> items = [
      MyItems(title: 'Local Image', subtitle: 'subtitle 1', icon: Icons.image, route:const LocalImage()),
      MyItems(title: 'PageView', subtitle: 'subtitle 2', icon: Icons.pages, route: const MyPageView()),
      MyItems(title: 'GridView', subtitle: 'subtitle 3', icon: Icons.grid_4x4, route: const MyGridView()),
      MyItems(title: 'Slider', subtitle: 'subtitle 4', icon: Icons.circle_outlined, route: const MySlider()),
      MyItems(title: 'Stack', subtitle: 'subtitle 5', icon: Icons.stacked_line_chart, route: const MyStack()),
    ];
}