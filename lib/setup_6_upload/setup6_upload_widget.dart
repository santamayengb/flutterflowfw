import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../location_picker/location_picker_widget.dart';
import '../timing_page/timing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setup6UploadWidget extends StatefulWidget {
  const Setup6UploadWidget({
    Key key,
    this.detailsFlag,
  }) : super(key: key);

  final bool detailsFlag;

  @override
  _Setup6UploadWidgetState createState() => _Setup6UploadWidgetState();
}

class _Setup6UploadWidgetState extends State<Setup6UploadWidget> {
  String uploadedFileUrl1 = '';
  String uploadedFileUrl2 = '';
  TextEditingController restaurantNameController;
  TextEditingController restaurantAddressController;
  TextEditingController restaurantAlternamtiveAddressController;
  TextEditingController restaurantPhoneNumberController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    restaurantAddressController = TextEditingController();
    restaurantNameController = TextEditingController();
    restaurantAlternamtiveAddressController = TextEditingController();
    restaurantPhoneNumberController = TextEditingController();
  }

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
        List<DummyBoolRecord> setup6UploadDummyBoolRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final setup6UploadDummyBoolRecord =
            setup6UploadDummyBoolRecordList.isNotEmpty
                ? setup6UploadDummyBoolRecordList.first
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    final dummyBoolUpdateData =
                                        createDummyBoolRecordData(
                                      dummybool: !setup6UploadDummyBoolRecord
                                          .dummybool,
                                    );
                                    await setup6UploadDummyBoolRecord.reference
                                        .update(dummyBoolUpdateData);
                                  },
                                  value: setup6UploadDummyBoolRecord.dummybool,
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    final dummyBoolUpdateData =
                                        createDummyBoolRecordData(
                                      dummybool: !setup6UploadDummyBoolRecord
                                          .dummybool,
                                    );
                                    await setup6UploadDummyBoolRecord.reference
                                        .update(dummyBoolUpdateData);
                                  },
                                  value: setup6UploadDummyBoolRecord.dummybool,
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    final dummyBoolUpdateData =
                                        createDummyBoolRecordData(
                                      dummybool: !setup6UploadDummyBoolRecord
                                          .dummybool,
                                    );
                                    await setup6UploadDummyBoolRecord.reference
                                        .update(dummyBoolUpdateData);
                                  },
                                  value: setup6UploadDummyBoolRecord.dummybool,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'Restaurant Cover Image',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Spartan',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'This image will appear as photo cover of your restaurant in customer ',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Spartan',
                                  color: Color(0xC2858585),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl1 = downloadUrl);
                                      showUploadMessage(
                                        context,
                                        'Success!',
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        'Failed to upload media',
                                      );
                                      return;
                                    }
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                        uploadedFileUrl1,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        fit: BoxFit.cover,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30,
                                                  borderWidth: 1,
                                                  buttonSize: 100,
                                                  icon: Icon(
                                                    Icons.add_circle,
                                                    color: Color(0x72000000),
                                                    size: 80,
                                                  ),
                                                  onPressed: () async {
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        validateFileFormat(
                                                            selectedMedia
                                                                .storagePath,
                                                            context)) {
                                                      showUploadMessage(
                                                        context,
                                                        'Uploading file...',
                                                        showLoading: true,
                                                      );
                                                      final downloadUrl =
                                                          await uploadData(
                                                              selectedMedia
                                                                  .storagePath,
                                                              selectedMedia
                                                                  .bytes);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .hideCurrentSnackBar();
                                                      if (downloadUrl != null) {
                                                        setState(() =>
                                                            uploadedFileUrl2 =
                                                                downloadUrl);
                                                        showUploadMessage(
                                                          context,
                                                          'Success!',
                                                        );
                                                      } else {
                                                        showUploadMessage(
                                                          context,
                                                          'Failed to upload media',
                                                        );
                                                        return;
                                                      }
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Restaurant Logo',
                                              style: FlutterFlowTheme.bodyText1,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                  uploadedFileUrl2,
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(55, 80, 0, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Color(0x00FFFFFF),
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.add_circle,
                                                  color: Color(0x72FFFFFF),
                                                  size: 40,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: TextFormField(
                                controller: restaurantNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Owner AADHAAR Card',
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: TextFormField(
                                controller: restaurantAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Owner PAN Card',
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: TextFormField(
                                controller:
                                    restaurantAlternamtiveAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Shop PAN Card',
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: TextFormField(
                                controller: restaurantPhoneNumberController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'GST Certificate (if applocable)',
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 20),
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
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
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
