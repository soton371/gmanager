import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({Key? key}) : super(key: key);

  @override
  _QrScanScreenState createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;


  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Barcode Sale", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        titleSpacing: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            color: kDarkWhite,
            child: Row(
              children: [
                Stack(
                  children: const [
                    Icon(Icons.shopping_cart_outlined,size: 32,),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 7,
                        child: Text("3",style: TextStyle(
                            color: Colors.white,
                            fontSize: 10
                        ),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                const Text("Total: 123", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                const Spacer(),
                GestureDetector(
                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContact())),
                    child: const Icon(Icons.person_add_alt,size: 32,color: kMainColor,))
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: kMainColor,
                    borderRadius: 10,
                    borderLength: 20,
                    borderWidth: 8,
                  )
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                  '${result!.code}')
                  : const Text('Scan a code'),
            ),
          )
        ],
      ),
    );
  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
