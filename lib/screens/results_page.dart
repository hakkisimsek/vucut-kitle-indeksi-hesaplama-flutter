import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = '77d1cf6a67f99de4';
 String reklam="ca-app-pub-2006076682262500/3944704312";
 const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
   
    testDevices: testDevice != null ? <String>[testDevice] : null,
    
    keywords: <String>['Game', 'Mario'],
  );
InterstitialAd _interstitialAd;

//Interstitial Ads
  InterstitialAd createInterstitialAd() {
    
    return InterstitialAd(
    
        adUnitId: reklam,
      //Change Interstitial AdUnitId with Admob ID
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("IntersttialAd $event");
        });
  }

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
 




  const ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vücut Kitle Endeksi'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: weightColor[resultText],
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMIStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Yeniden Hesapla',
            
            onTap: () {
              Navigator.of(context).pop();
              FirebaseAdMob.instance.initialize(appId: "ca-app-pub-2006076682262500~4407738742");
    //Change appId With Admob Id
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show(); 
            },
          ),
        ],
      ),
    );
  }


  
}

