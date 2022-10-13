import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/period.dart';
import 'package:new_project/src/model/Faults.dart';

class FaultCard extends StatelessWidget {
  final index;
  final constraints;
  final Faults faults;
  const FaultCard(
      {super.key,
      required this.constraints,
      required this.index,
      required this.faults});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: Offset(0, 5), // changes position of shadow
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'İşlem ${index + 1}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      faults.date,
                      style: TextStyle(color: appSecondary4),
                    ),
                    const SizedBox(height: 10),
                    Text(faults.content),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Period(
                          isVisible: faults.situation == "Teknik Servis",
                          periodSituation: faults.technicState ?? 0,
                        ),
                        Text(
                          faults.situation,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: faults.Color(),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
