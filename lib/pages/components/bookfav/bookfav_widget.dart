import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bookfav_model.dart';
export 'bookfav_model.dart';

class BookfavWidget extends StatefulWidget {
  const BookfavWidget({Key? key}) : super(key: key);

  @override
  _BookfavWidgetState createState() => _BookfavWidgetState();
}

class _BookfavWidgetState extends State<BookfavWidget> {
  late BookfavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookfavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StreamBuilder<List<BooksRecord>>(
          stream: queryBooksRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              );
            }
            List<BooksRecord> imageBooksRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final imageBooksRecord = imageBooksRecordList.isNotEmpty
                ? imageBooksRecordList.first
                : null;
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://cdn.gramedia.com/uploads/items/9786020332949_Bulan-New-Cover.jpg',
                width: 152.0,
                height: 224.0,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: Color(0x96FFFFFF),
            icon: Icon(
              Icons.favorite_rounded,
              color: Color(0xFF254682),
              size: 20.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ),
      ],
    );
  }
}
