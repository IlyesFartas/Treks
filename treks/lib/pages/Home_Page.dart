import 'package:flutter/material.dart';
import 'package:treks/models/States.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  // ignore: non_constant_identifier_names
  final List<States> StatesData = [
    const States(id: '1', name: 'adrar'),
    const States(id: '2', name: 'chlef'),
    const States(id: '3', name: 'laghouat'),
    const States(id: '4', name: 'oum el bouaghi'),
    const States(id: '5', name: 'batna'),
    const States(id: '6', name: 'béjaïa'),
    const States(id: '7', name: 'biskra'),
    const States(id: '8', name: 'béchar'),
    const States(id: '9', name: 'blida'),
    const States(id: '10', name: 'bouira'),
    const States(id: '11', name: 'tamanrasset'),
    const States(id: '12', name: 'tébessa'),
    const States(id: '13', name: 'tlemcen'),
    const States(id: '14', name: 'tiaret'),
    const States(id: '15', name: 'tizi ouzou'),
    const States(id: '16', name: 'alger'),
    const States(id: '17', name: 'djelfa'),
    const States(id: '18', name: 'jijel'),
    const States(id: '19', name: 'setif'),
    const States(id: '20', name: 'saïda'),
    const States(id: '21', name: 'skikda'),
    const States(id: '22', name: 'sidi bel abbès'),
    const States(id: '23', name: 'annaba'),
    const States(id: '24', name: 'guelma'),
    const States(id: '25', name: 'constantine'),
    const States(id: '26', name: 'médéa'),
    const States(id: '27', name: 'mostaganem'),
    const States(id: '28', name: 'm\'sila'),
    const States(id: '29', name: 'mascara'),
    const States(id: '30', name: 'ouargla'),
    const States(id: '31', name: 'oran'),
    const States(id: '32', name: 'el bayadh'),
    const States(id: '33', name: 'illizi'),
    const States(id: '34', name: 'bordj bou arreridj'),
    const States(id: '35', name: 'boumerdès'),
    const States(id: '36', name: 'el taref'),
    const States(id: '37', name: 'tindouf'),
    const States(id: '38', name: 'tissemsilt'),
    const States(id: '39', name: 'el oued'),
    const States(id: '40', name: 'khenchela'),
    const States(id: '41', name: 'souk ahras'),
    const States(id: '42', name: 'tipaza'),
    const States(id: '43', name: 'milaa'),
    const States(id: '44', name: 'ain defla'),
    const States(id: '45', name: 'naama'),
    const States(id: '46', name: 'ain temouchent'),
    const States(id: '47', name: 'ghardaia'),
    const States(id: '48', name: 'relizane'),
  ];
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200], // A light grey background
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile_pic.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  'Please select a state',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.StatesData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey[400]!, // Border color
                        width: 1.0,
                      ),
                    ),
                    child: ListTile(
                      tileColor:
                          Colors.white, // White background for each list item
                      title: Text(
                        widget.StatesData[index].name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Dark text color for contrast
                        ),
                      ),
                      onTap: () {
                        // Add functionality here when a state is tapped
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
