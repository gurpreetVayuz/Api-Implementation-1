import 'package:flutter/material.dart';
import 'package:taskday1/mainScreen/model/displayDataListModel.dart';

class ProductDescription extends StatefulWidget {
  final String name;
  final String? color;
  final String? capacity;
  final String? capacityGB;
  final String? price;
  final String? generation;
  final String? year;
  final String? cpuModel;
  final String? hardDiskSize;
  final String? strapColour;
  final String? caseSize;
  final String? description;
  final String? screenSize;

  const ProductDescription(
      {super.key,
      required this.name,
      this.color,
      this.capacity,
      this.capacityGB,
      this.price,
      this.generation,
      this.year,
      this.cpuModel,
      this.hardDiskSize,
      this.strapColour,
      this.caseSize,
      this.description,
      this.screenSize});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(102, 201, 237, 0.934)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/iphone.jpg'),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(242, 171, 71, 0.956)),
                child: Column(children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.color ?? "Color unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.capacity ?? "Capacity  unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.capacityGB ??" CapacityGB  unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.price ?? "Price  unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.generation ?? "Generation   unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.year ?? "Year   unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.cpuModel ?? "CPU Model   unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.hardDiskSize ?? "HardDiskSize    unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.strapColour ?? "StrapColour     unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.description ?? "Descriptopn      unknown",
        
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    widget.screenSize?? "ScreenSize  unknown",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
