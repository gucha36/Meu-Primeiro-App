import 'package:exemplo/pages/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<CameraDescription> cameras = [];
  CameraController? controller;
  XFile? imagem;
  Size? imageSize;

  @override
  void initState() {
    super.initState();
    _loadCameras();
  }

  _loadCameras() async {
    try {
      cameras = await availableCameras();
      _startCamera();
    } on CameraException catch (e) {
      print(e.description);
    }
  }

  _startCamera() async {
    if (cameras.isEmpty) {
      print("Câmera não encontrada");
    } else {
      _previewCamera(cameras.first);
    }
  }

  _previewCamera(CameraDescription camera) async {
    final CameraController cameraController = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller = cameraController;

    try {
      await cameraController.initialize();

      // Obtenha o tamanho da imagem da visualização da câmera
      if (mounted) {
        setState(() {
          imageSize = controller?.value.previewSize;
        });
      }
    } on CameraException catch (e) {
      print(e.description);
    }

    if (mounted) {
      setState(() {
        // Inclua alterações desejadas aqui, se necessário.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: controller != null
            ? Container(
                width: imageSize?.width,
                height: imageSize?.height,
                alignment: Alignment.center,
                child: CameraPreview(controller!),
              )
            : const CircularProgressIndicator(),
      ),
      appBar: AppBar(),
      drawer: const MyDrawer(),
    );
  }
}
