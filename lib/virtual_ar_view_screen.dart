import 'package:flutter/material.dart';
import 'package:augmented_reality_plugin/augmented_reality_plugin.dart';


class VirtualARViewScreen extends StatefulWidget {

  String? clickedItemImageLink;

  VirtualARViewScreen({this.clickedItemImageLink,});

  @override
  State<VirtualARViewScreen> createState() => _VirtualARViewScreenState();
}

class _VirtualARViewScreenState extends State<VirtualARViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "AR View",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
      ),
      body:
      AugmentedRealityPlugin(widget.clickedItemImageLink.toString()),
    );
  }
}
