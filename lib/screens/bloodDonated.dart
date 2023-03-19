import 'package:flutter/material.dart';

import '../reusableWidgets/blood_grid_cell_container.dart';

class BloodDonated extends StatelessWidget {
  const BloodDonated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFEA),
      appBar: AppBar(
          leading: BackButton(color: Colors.white),
          title: const Text('Blood Available'),
          centerTitle: true,
          backgroundColor: Colors.red[700]),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        childAspectRatio: 2/2 , //try nope show me //still m4 mzbota wait
        // disregard this part for now ,, one last request ,, regarding the inkwell and the ripple effect
        children: const <Widget>[
          BloodGridCellContainer(bloodTypeName: 'A+',),
          BloodGridCellContainer(bloodTypeName: 'A-',),
          BloodGridCellContainer(bloodTypeName: 'B+',),
          BloodGridCellContainer(bloodTypeName: 'B-',),
          BloodGridCellContainer(bloodTypeName: 'O+',),
          BloodGridCellContainer(bloodTypeName: 'O-',),
          BloodGridCellContainer(bloodTypeName: 'AB+',),
          BloodGridCellContainer(bloodTypeName: 'AB-',),
        ],
      ),
    );
  }
}
