import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantProfilePageWidget extends StatefulWidget {
  const RestaurantProfilePageWidget({Key key}) : super(key: key);

  @override
  _RestaurantProfilePageWidgetState createState() =>
      _RestaurantProfilePageWidgetState();
}

class _RestaurantProfilePageWidgetState
    extends State<RestaurantProfilePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DummyBoolRecord>>(
      stream: queryDummyBoolRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
          );
        }
        List<DummyBoolRecord> restaurantProfilePageDummyBoolRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final restaurantProfilePageDummyBoolRecord =
            restaurantProfilePageDummyBoolRecordList.isNotEmpty
                ? restaurantProfilePageDummyBoolRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFEFEFEF),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'data:image/jpeg;base64,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',
                          ).image,
                        ),
                      ),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        color: Color(0x91000000),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'HotPot',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                            child: Text(
                              'Chinese and Japanese cuisine',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            'Wangkhei Keithel Ashangbi, kongba road, Imphal, Manipur 795001',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Dine-in, Takeaway, Delivery',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Owner',
                    style: FlutterFlowTheme.bodyText1,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fullname',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Tomchou Moirangthem',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Email',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'example@domain.com',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Contact',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '+91 9856 0123 45',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'WhatsApp',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '+91 9856 0123 45',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Details and setting',
                    style: FlutterFlowTheme.bodyText1,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Service Status',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Open or close Service manualy  ',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF5D5D5D),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Open',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                    ToggleIcon(
                                      onPressed: () async {
                                        final dummyBoolUpdateData =
                                            createDummyBoolRecordData(
                                          dummybool:
                                              !restaurantProfilePageDummyBoolRecord
                                                  .dummybool,
                                        );
                                        await restaurantProfilePageDummyBoolRecord
                                            .reference
                                            .update(dummyBoolUpdateData);
                                      },
                                      value:
                                          restaurantProfilePageDummyBoolRecord
                                              .dummybool,
                                      onIcon: Icon(
                                        Icons.toggle_on_sharp,
                                        color: Color(0xFF26BE52),
                                        size: 30,
                                      ),
                                      offIcon: Icon(
                                        Icons.toggle_off,
                                        color: Color(0xFF626262),
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Email',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Text(
                                          '117 customer feedback and ratings',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 55,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFC107),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '4.3',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star_rate,
                                                color: Color(0xFFFF9007),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Owner Details',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Edit',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Restaurant Details',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Update restaurant’s details',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF555555),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Edit',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Documents',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Update your document',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF555555),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Update',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Promote',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Get more exposure, with an ads',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF555555),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
