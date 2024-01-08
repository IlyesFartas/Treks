import 'package:flutter/material.dart';
import 'package:treks/models/States.dart';
import 'package:treks/pages/Statescreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  
  final List<States> StatesData = [
    const States(id: '16', name: 'Alger'),
    const States(id: '23', name: 'Annaba'),
    const States(id: '5', name: 'Batna'),
    const States(id: '25', name: 'Constantine'),
    const States(id: '47', name: 'Ghardaia'),
    const States(id: '31', name: 'Oran'),
    const States(id: '19', name: 'Setif'),
    const States(id: '11', name: 'Tamanrasset'),
    const States(id: '15', name: 'Tizi ouzou'),
    const States(id: '42', name: 'Tipaza'),
    const States(id: '13', name: 'Tlemcen'),
  ];
}

class _HomePageState extends State<HomePage> {
  void _navigateToStateScreen(String stateName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StateScreen(stateName: stateName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        color: Colors.grey[400]!,
                        width: 1.0,
                      ),
                    ),
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        widget.StatesData[index].name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      onTap: () {
                        _navigateToStateScreen(widget.StatesData[index].name);
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
