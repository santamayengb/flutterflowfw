import '../components/cancelled_widget.dart';
import '../components/order_history_card_widget.dart';
import '../components/preparing_widget.dart';
import '../components/ready_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdeHistoryWidget extends StatefulWidget {
  const OrdeHistoryWidget({Key key}) : super(key: key);

  @override
  _OrdeHistoryWidgetState createState() => _OrdeHistoryWidgetState();
}

class _OrdeHistoryWidgetState extends State<OrdeHistoryWidget> {
  String dropDownValue1;
  String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'ORDER HISTORY',
          style: FlutterFlowTheme.bodyText1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: Icon(
              Icons.filter_alt,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowDropDown(
                      options: ['ALL'].toList(),
                      onChanged: (val) => setState(() => dropDownValue1 = val),
                      width: 130,
                      height: 40,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      hintText: 'FILTER  - ALL',
                      fillColor: Color(0xFFE2E2E2),
                      elevation: 1,
                      borderColor: Color(0xFFC1C1C1),
                      borderWidth: 1,
                      borderRadius: 100,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: FlutterFlowDropDown(
                        options: ['TODAY'].toList(),
                        onChanged: (val) =>
                            setState(() => dropDownValue2 = val),
                        width: 100,
                        height: 40,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'TODAY',
                        fillColor: Color(0xFFE2E2E2),
                        elevation: 1,
                        borderColor: Color(0xFFC1C1C1),
                        borderWidth: 1,
                        borderRadius: 100,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: OrderHistoryCardWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: PreparingWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: ReadyWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: CancelledWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
