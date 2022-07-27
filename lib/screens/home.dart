import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: Center(
        child: ARKitSceneView(
          onARKitViewCreated: (controller) => arView(controller),
        ),
      ),
    );
  }
}

void arView(ARKitController controller) {
  final nodeAr = ARKitNode(
    geometry: ARKitSphere(
      materials: [
        ARKitMaterial(
          diffuse: ARKitMaterialProperty(image: 'assets/images/grid.jpg'),
          doubleSided: true,
        ),
      ],
      radius: 1,
    ),
    position: Vectoc3(0,0,0);
  );
}
