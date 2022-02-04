import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CutomeTimeWidget extends StatefulWidget {
  const CutomeTimeWidget({Key key}) : super(key: key);

  @override
  _CutomeTimeWidgetState createState() => _CutomeTimeWidgetState();
}

class _CutomeTimeWidgetState extends State<CutomeTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change Service Time for Sunday',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Custom Time',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Enable Custom Time to modified your Service time.',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    StreamBuilder<List<DummyBoolRecord>>(
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
                        List<DummyBoolRecord> toggleIconDummyBoolRecordList =
                            snapshot.data;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data.isEmpty) {
                          return Container();
                        }
                        final toggleIconDummyBoolRecord =
                            toggleIconDummyBoolRecordList.isNotEmpty
                                ? toggleIconDummyBoolRecordList.first
                                : null;
                        return ToggleIcon(
                          onPressed: () async {
                            final dummyBoolUpdateData =
                                createDummyBoolRecordData(
                              dummybool: !toggleIconDummyBoolRecord.dummybool,
                            );
                            await toggleIconDummyBoolRecord.reference
                                .update(dummyBoolUpdateData);
                          },
                          value: toggleIconDummyBoolRecord.dummybool,
                          onIcon: Icon(
                            Icons.toggle_on,
                            color: Color(0xFF005D1A),
                            size: 30,
                          ),
                          offIcon: Icon(
                            Icons.toggle_off,
                            color: Color(0x48000000),
                            size: 30,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '9:00 AM to 12:45 PM',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: Color(0xFFEA0000),
                      size: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '9:00 AM to 12:45 PM',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: Color(0xFFEA0000),
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add Open Timing',
                icon: Icon(
                  Icons.add,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 220,
                  height: 40,
                  color: FlutterFlowTheme.primaryColor,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'DONE',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.black,
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
        ],
      ),
    );
  }
}
