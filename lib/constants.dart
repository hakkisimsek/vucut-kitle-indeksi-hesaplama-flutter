import 'package:flutter/material.dart';

const kActiveCardColor = Color(0xff1D1F33);
const kInactiveCardColor = Color(0xff111328);
const kBottomContainerColor = Color(0xffEA1556);
const kBottomContainerHeight = 80.0;

const kLabelStyle = TextStyle(
  fontSize: 18,
  color: Color(0xff8d8e98),
);

const kNumberStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900
);

const kLargeButtonStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold
);

const kTitleStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold
);

const kResultStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff24d876)
);

const kBMIStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.bold
);

const kBodyStyle = TextStyle(
  fontSize: 22.0,
);

const Map<String,Color> weightColor = {
  "DÜŞÜK KİLO" : Color(0xff33B1E4),
  "NORMAL" : Color(0xff94C947),
  "FAZLA KİLO" : Color(0xffF99929),
  "OBEZİTE" : Color(0xffC92C33)
};