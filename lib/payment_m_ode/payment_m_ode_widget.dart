import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../timing_page/timing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMOdeWidget extends StatefulWidget {
  const PaymentMOdeWidget({Key key}) : super(key: key);

  @override
  _PaymentMOdeWidgetState createState() => _PaymentMOdeWidgetState();
}

class _PaymentMOdeWidgetState extends State<PaymentMOdeWidget> {
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
        List<DummyBoolRecord> paymentMOdeDummyBoolRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final paymentMOdeDummyBoolRecord =
            paymentMOdeDummyBoolRecordList.isNotEmpty
                ? paymentMOdeDummyBoolRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0x73FFFFFF),
            iconTheme: IconThemeData(color: Color(0x730B0B0B)),
            automaticallyImplyLeading: true,
            title: Text(
              'Select Outlet Description',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 4,
          ),
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Online Payment',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    final dummyBoolUpdateData =
                                        createDummyBoolRecordData(
                                      dummybool:
                                          !paymentMOdeDummyBoolRecord.dummybool,
                                    );
                                    await paymentMOdeDummyBoolRecord.reference
                                        .update(dummyBoolUpdateData);
                                  },
                                  value: paymentMOdeDummyBoolRecord.dummybool,
                                  onIcon: Icon(
                                    Icons.check_box,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_box_outline_blank,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'POD',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    final dummyBoolUpdateData =
                                        createDummyBoolRecordData(
                                      dummybool:
                                          !paymentMOdeDummyBoolRecord.dummybool,
                                    );
                                    await paymentMOdeDummyBoolRecord.reference
                                        .update(dummyBoolUpdateData);
                                  },
                                  value: paymentMOdeDummyBoolRecord.dummybool,
                                  onIcon: Icon(
                                    Icons.check_box,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_box_outline_blank,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimingPageWidget(),
                          ),
                        );
                      },
                      text: 'NEXT',
                      options: FFButtonOptions(
                        width: 350,
                        height: 40,
                        color: Color(0xFFD32F2F),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
