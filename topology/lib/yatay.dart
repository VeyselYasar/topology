import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Yatay extends StatelessWidget {
  const Yatay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode(context);
          }
        },
      ),
    );
  }

  Widget _portraitMode() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 35, right: 8),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Network topology',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.close, size: 26, color: Colors.black),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(Icons.arrow_back_sharp,
                      size: 24, color: Colors.black),
                  const Text("BKV-1345221",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text("Machine-143122-Hall1",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.5))),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  const Text(
                    "General Status",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const ColumnInformationBar(
                    title: "Sensor S/N",
                    description: "12253486",
                  ),
                  const ColumnInformationBar(
                    title: "Connected Gateway",
                    iconname: "assets/gateway.svg",
                    description: "BKV-GT12412412",
                  ),
                  const ColumnInformationBar(
                    title: "Battery",
                    iconname: "assets/battery.svg",
                    description: "High",
                  ),
                  const ColumnInformationBar(
                    title: "Signal Streangth",
                    iconname: "assets/wiriless.svg",
                    description: "-75m dB",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Divider(
                    thickness: 5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  const Text(
                    "Adventured Status",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnAdventuredStatus(
                              title: "Intervals",
                              description: "60",
                            ),
                            ColumnAdventuredStatus(
                              title: "Hop Count",
                              description: "2",
                            ),
                            ColumnAdventuredStatus(
                              title: "Next hop count",
                              description: "3",
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnAdventuredStatus(
                              title: "Role",
                              description: "Slink",
                            ),
                            ColumnAdventuredStatus(
                              title: "Travel Time",
                              description: "359",
                            ),
                            ColumnAdventuredStatus(
                              title: "Next hop id",
                              description: "0feb17c7",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _landscapeMode(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.arrow_back_sharp,
                          size: 24, color: Colors.black),
                      SizedBox(
                        width: 16,
                      ),
                      Text("BKV-1345221",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text("Machine-143122-Hall1",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5))),
                  ),
                  Divider(
                    thickness: 5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "General Status",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        ColumnInformationBar(
                          title: "Sensor S/N",
                          sn: "12253486",
                        ),
                        ColumnInformationBar(
                          title: "Connected Gateway",
                          iconname: "assets/gateway.svg",
                          description: "BKV-GT12412412",
                        ),
                        Row(
                          children: [
                            ColumnInformationBar(
                              title: "Battery",
                              iconname: "assets/battery.svg",
                              description: "High",
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            ColumnInformationBar(
                              title: "Signal Streangth",
                              iconname: "assets/wiriless.svg",
                              description: "-75m dB",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Adventured Status",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ColumnAdventuredStatus(
                                    title: "Intervals",
                                    description: "60",
                                  ),
                                  ColumnAdventuredStatus(
                                    title: "Hop Count",
                                    description: "2",
                                  ),
                                  ColumnAdventuredStatus(
                                    title: "Next hop count",
                                    description: "3",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ColumnAdventuredStatus(
                                    title: "Role",
                                    description: "Slink",
                                  ),
                                  ColumnAdventuredStatus(
                                    title: "Travel Time",
                                    description: "359",
                                  ),
                                  ColumnAdventuredStatus(
                                    title: "Next hop id",
                                    description: "0feb17c7",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnInformationBar extends StatelessWidget {
  const ColumnInformationBar(
      {super.key,
      required this.title,
      this.iconname,
      this.sn,
      this.description});

  final String title;
  final String? description;
  final String? iconname;
  final String? sn;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text(title,
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.5))),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: sn != null,
                  child: Text("$sn",
                      style:
                          const TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            iconname != null ? SvgPicture.asset(iconname!) : SizedBox(),
            const SizedBox(
              width: 10,
            ),
            Visibility(
              visible: description != null,
              child: Text("$description",
                  style: const TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ],
    );
  }
}

class ColumnAdventuredStatus extends StatelessWidget {
  const ColumnAdventuredStatus(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
              style: TextStyle(
                  fontSize: 14, color: Colors.black.withOpacity(0.5))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
