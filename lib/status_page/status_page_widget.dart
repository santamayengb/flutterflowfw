import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPageWidget extends StatefulWidget {
  const StatusPageWidget({Key key}) : super(key: key);

  @override
  _StatusPageWidgetState createState() => _StatusPageWidgetState();
}

class _StatusPageWidgetState extends State<StatusPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x73FFFFFF),
        iconTheme: IconThemeData(color: Color(0x730B0B0B)),
        automaticallyImplyLeading: false,
        title: Text(
          'Hotpot',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: Icon(
                  Icons.pending_actions,
                  color: Color(0x730B0B0B),
                  size: 100,
                ),
              ),
              Text(
                'Account Verification Pending.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              Text(
                'Your Account is under a verification process. Our team will contact you as soon as possible. For more information contact us',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 100),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'CONTACT US',
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
  }
}
