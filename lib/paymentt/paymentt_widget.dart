import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sucesso/sucesso_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymenttWidget extends StatefulWidget {
  const PaymenttWidget({
    Key key,
    this.price,
    this.days,
    this.carRef,
    this.startDay,
    this.endDay,
  }) : super(key: key);

  final int price;
  final int days;
  final CarsRecord carRef;
  final DateTime startDay;
  final DateTime endDay;

  @override
  _PaymenttWidgetState createState() => _PaymenttWidgetState();
}

class _PaymenttWidgetState extends State<PaymenttWidget> {
  ReservasRecord reserveRef;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF82878C),
            size: 24,
          ),
        ),
        title: Text(
          'Pagamento',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF151B1E),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF7F7F8),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            '${functions.priceToPay(widget.days, widget.price).toString()} Mt',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: AuthUserStreamWidget(
                          child: Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: AuthUserStreamWidget(
                          child: Text(
                            'XXXX XXXX XXXX  ${functions.lastfourdigits(currentUserDocument?.cardNumber)}',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final reservasCreateData = createReservasRecordData(
                        startDay: widget.startDay,
                        endDay: widget.endDay,
                        carReference: widget.carRef.reference,
                        paid: functions
                            .priceToPay(widget.days, widget.price)
                            .toDouble()
                            .toDouble(),
                        userRef: currentUserReference,
                      );
                      final reservasRecordReference =
                          ReservasRecord.collection.doc();
                      await reservasRecordReference.set(reservasCreateData);
                      reserveRef = ReservasRecord.getDocumentFromData(
                          reservasCreateData, reservasRecordReference);

                      final usersUpdateData = createUsersRecordData(
                        totalSpent: functions.totalSpent(
                            functions.priceToPay(widget.days, widget.price),
                            currentUserDocument?.totalSpent),
                        myrent: reserveRef.reference,
                      );
                      await currentUserReference.update(usersUpdateData);

                      final carsUpdateData = createCarsRecordData(
                        availability: 'Indisponível',
                      );
                      await widget.carRef.reference.update(carsUpdateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SucessoWidget(
                            price: functions
                                .priceToPay(widget.days, widget.price)
                                .toString(),
                          ),
                        ),
                      );

                      setState(() {});
                    },
                    text: 'Pagar',
                    options: FFButtonOptions(
                      width: 230,
                      height: 50,
                      color: Color(0xFF333366),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
