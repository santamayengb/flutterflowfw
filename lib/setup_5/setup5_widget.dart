import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/lat_lng.dart';
import '../location_picker/location_picker_widget.dart';
import '../setup_6_upload/setup6_upload_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setup5Widget extends StatefulWidget {
  const Setup5Widget({
    Key key,
    this.location,
  }) : super(key: key);

  final LatLng location;

  @override
  _Setup5WidgetState createState() => _Setup5WidgetState();
}

class _Setup5WidgetState extends State<Setup5Widget> {
  String cuisineTypeValue;
  TextEditingController restaurantAddressController;
  TextEditingController restaurantNameController;
  TextEditingController restaurantAlternamtiveAddressController;
  TextEditingController restaurantPhoneNumberController;
  TextEditingController restaurantaltAtlPhoneNumberController;
  TextEditingController restaurantaltLocationController;
  String outletTypeValue;
  TextEditingController outletDescriptionController;
  String paymentTypeValue;
  TextEditingController fssaiNoController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fssaiNoController = TextEditingController();
    outletDescriptionController = TextEditingController();
    restaurantAddressController = TextEditingController();
    restaurantNameController = TextEditingController();
    restaurantAlternamtiveAddressController = TextEditingController();
    restaurantPhoneNumberController = TextEditingController();
    restaurantaltAtlPhoneNumberController = TextEditingController();
    restaurantaltLocationController = TextEditingController(
        text: functions.getLocationtoString(widget.location));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: StreamBuilder<List<DummyBoolRecord>>(
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
          List<DummyBoolRecord> setup5DummyBoolRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final setup5DummyBoolRecord = setup5DummyBoolRecordList.isNotEmpty
              ? setup5DummyBoolRecordList.first
              : null;
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPickerWidget(),
                    ),
                  );
                },
                child: Text(
                  'Setup',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Spartan',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 4,
            ),
            backgroundColor: Color(0xFFF5F5F5),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: StreamBuilder<List<DummyBoolRecord>>(
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
                        List<DummyBoolRecord> rowDummyBoolRecordList =
                            snapshot.data;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data.isEmpty) {
                          return Container();
                        }
                        final rowDummyBoolRecord =
                            rowDummyBoolRecordList.isNotEmpty
                                ? rowDummyBoolRecordList.first
                                : null;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      final dummyBoolUpdateData =
                                          createDummyBoolRecordData(
                                        dummybool:
                                            !setup5DummyBoolRecord.dummybool,
                                      );
                                      await setup5DummyBoolRecord.reference
                                          .update(dummyBoolUpdateData);
                                    },
                                    value: setup5DummyBoolRecord.dummybool,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'DETAILS',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6CE866),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      final dummyBoolUpdateData =
                                          createDummyBoolRecordData(
                                        dummybool:
                                            !setup5DummyBoolRecord.dummybool,
                                      );
                                      await setup5DummyBoolRecord.reference
                                          .update(dummyBoolUpdateData);
                                    },
                                    value: setup5DummyBoolRecord.dummybool,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'UPLOADS',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6CE866),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      final dummyBoolUpdateData =
                                          createDummyBoolRecordData(
                                        dummybool:
                                            !setup5DummyBoolRecord.dummybool,
                                      );
                                      await setup5DummyBoolRecord.reference
                                          .update(dummyBoolUpdateData);
                                    },
                                    value: setup5DummyBoolRecord.dummybool,
                                    onIcon: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF6CE866),
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'TIMING',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: restaurantNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Restaurant Name*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: restaurantAddressController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Restaurant Address*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            keyboardType: TextInputType.multiline,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: restaurantAlternamtiveAddressController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Restaurant Alternamtive Address*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            keyboardType: TextInputType.multiline,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: restaurantPhoneNumberController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Restaurant Phone Number*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }
                              if (val.length < 10) {
                                return 'Requires at least 10 characters.';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: restaurantaltAtlPhoneNumberController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Restaurant alt  Phone Number*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: TextFormField(
                                  onFieldSubmitted: (_) async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            LocationPickerWidget(),
                                      ),
                                    );
                                  },
                                  controller: restaurantaltLocationController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Geo Location',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFD7D7D7),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF303030),
                                  ),
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.my_location,
                                color: Color(0x72000000),
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        LocationPickerWidget(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            initialOption: cuisineTypeValue ??= 'test',
                            options:
                                ['indian', 'chinese', 'south indian'].toList(),
                            onChanged: (val) =>
                                setState(() => cuisineTypeValue = val),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            hintText: 'Cuisine Type',
                            fillColor: Color(0xFFD7D7D7),
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            initialOption: outletTypeValue ??= 'test',
                            options: ['Option 1', '', ''].toList(),
                            onChanged: (val) =>
                                setState(() => outletTypeValue = val),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            hintText: 'Outlet Type',
                            fillColor: Color(0xFFD7D7D7),
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: outletDescriptionController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Outlet Description*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            keyboardType: TextInputType.multiline,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            initialOption: paymentTypeValue ??= 'test',
                            options: ['COD', 'Online'].toList(),
                            onChanged: (val) =>
                                setState(() => paymentTypeValue = val),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            hintText: 'payment type',
                            fillColor: Color(0xFFD7D7D7),
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: fssaiNoController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Fssai no*',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFD7D7D7),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF303030),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Setup6UploadWidget(),
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
