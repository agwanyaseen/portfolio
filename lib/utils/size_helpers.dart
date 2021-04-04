import 'package:flutter/material.dart';

enum Window { ExtraExtraLarge, ExtraLarge, Large, Medium, Small, ExtraSmall }

Window getWindow(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  Window window;
  if (width >= 1400) {
    window = Window.ExtraExtraLarge;
  } else if (width >= 1200) {
    window = Window.ExtraLarge;
  } else if (width >= 992) {
    window = Window.Large;
  } else if (width >= 768) {
    window = Window.Medium;
  } else if (width >= 576) {
    window = Window.Small;
  } else {
    window = Window.ExtraSmall;
  }
  return window;
}

double getSize(BuildContext context) {
  Window win = getWindow(context);
  var padding = 0.0;

  switch (win) {
    case Window.ExtraExtraLarge:
      padding = 300;
      break;
    case Window.ExtraLarge:
      padding = 200;
      break;
    case Window.Large:
      padding = 100;
      break;
    case Window.Medium:
      padding = 50;
      break;
    case Window.Small:
    case Window.ExtraSmall:
      padding = 0;
      break;
  }

  return padding;
}
