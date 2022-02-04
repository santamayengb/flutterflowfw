import '../backend/backend.dart';
import '../components/cutome_time_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class EditServiceTimeWidget extends StatefulWidget {
  const EditServiceTimeWidget({Key key}) : super(key: key);

  @override
  _EditServiceTimeWidgetState createState() => _EditServiceTimeWidgetState();
}

class _EditServiceTimeWidgetState extends State<EditServiceTimeWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
  DateTime datePicked3;
  DateTime datePicked4;
  DateTime datePicked5;
  DateTime datePicked6;
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
        List<DummyBoolRecord> editServiceTimeDummyBoolRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final editServiceTimeDummyBoolRecord =
            editServiceTimeDummyBoolRecordList.isNotEmpty
                ? editServiceTimeDummyBoolRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              'Service Time',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 4,
          ),
          backgroundColor: Color(0xFFF5F5F5),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                    child: Text(
                      'Service Timing',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Sunday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: Container(
                                                    height: 490,
                                                    child: CutomeTimeWidget(),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Monday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked1 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Tuesday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked2 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Wednesday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked3 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Thursday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked4 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Friday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked5 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Text(
                                          'Satarday',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Time - 9:00 AM to 1:30 PM',
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            final dummyBoolUpdateData =
                                                createDummyBoolRecordData(
                                              dummybool:
                                                  !editServiceTimeDummyBoolRecord
                                                      .dummybool,
                                            );
                                            await editServiceTimeDummyBoolRecord
                                                .reference
                                                .update(dummyBoolUpdateData);
                                          },
                                          value: editServiceTimeDummyBoolRecord
                                              .dummybool,
                                          onIcon: Icon(
                                            Icons.toggle_off_rounded,
                                            color: Color(0x72000000),
                                            size: 50,
                                          ),
                                          offIcon: Icon(
                                            Icons.toggle_on_sharp,
                                            color: Color(0xFF50A74C),
                                            size: 50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.arrow_drop_down_sharp,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDateTimePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked6 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    color: Color(0x3E000000),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 15, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'DONE',
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
