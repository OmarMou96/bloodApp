import 'package:flutter/material.dart';

class BloodGridCellContainer extends StatelessWidget {
  final String? bloodTypeName;

  final Color?
      cellColor; //we added the var here and added it as required in the class constructor
  const BloodGridCellContainer(
      {Key? key, required this.bloodTypeName, this.cellColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: (
            Container(
          padding: const EdgeInsets.all(8),
          color: cellColor ?? Colors.red[500],
          child: Center(
              child: Text(
            bloodTypeName ?? "",
            style: const TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          )),
        )),
      );
}
