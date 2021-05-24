import 'dart:html' as html;

import 'package:porfolio/responsiveLayout.dart';
import 'package:porfolio/styles.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_web/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Widget> myLinks() => [
    bottomButtonsWidget('Github', 'https://github.com/Zolbayar8027'),
    SizedBox(
      width: 10,
    ),

    bottomButtonsWidget(
        'Facebook', 'https://www.facebook.com/zolbayar.zoloo.7927/'),
    SizedBox(
      width: 10,
    ),
    bottomButtonsWidget(
        'Instagram', 'https://www.instagram.com/zolbayardoll/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                width: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                child: CircleAvatar(
                                  backgroundImage:
                                  AssetImage('images/my_image.jpg'),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Hello',
                                      style: titleTextStyle.copyWith(
                                          fontSize:
                                          ResponsiveLayout.isLargeScreen(
                                              context)
                                              ? 28
                                              : 22),
                                    ),
                                    Text(
                                      'I\'m Zolbayar',
                                      style: titleNameStyle.copyWith(
                                          fontSize:
                                          ResponsiveLayout.isLargeScreen(
                                              context)
                                              ? 24
                                              : 18),
                                    ),
                                    Text(
                                      'MIU student who taking mobile programming class',
                                      style: subHeadingTextStyle.copyWith(
                                          fontSize:
                                          ResponsiveLayout.isLargeScreen(
                                              context)
                                              ? 18
                                              : 12),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    FlatButton(
                                        onPressed: () => {
                                          html.window.open(
                                              'https://drive.google.com/open?id=1Ysf0zRhVKBCrYcyTXWjZ_VbZZ8bkAgoa',
                                              'Resume')
                                        },
                                        color: Colors.blue,
                                        child: Text(
                                          'Resume',
                                          style: linksButtonStyle.copyWith(
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Wrap(
                            children: myLinks(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ':> (----) <:',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        'By Zolbayar',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomButtonsWidget(String text, String url) {
  return InkWell(
    onTap: () => {html.window.open(url, text)},
    child: Text(
      text,
      style: linksButtonStyle,
    ),
  );
}