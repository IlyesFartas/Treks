import 'package:flutter/material.dart';
import 'package:treks/models/States.dart';
import 'package:treks/pages/Statescreen.dart';
import 'package:treks/pages/FavoriteScreen.dart'; 

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
  int _selectedIndex = 0;

  void _navigateToStateScreen(String stateName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StateScreen(stateName: stateName),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FavoriteScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treks'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.8, 
        ),
        itemCount: widget.StatesData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _navigateToStateScreen(widget.StatesData[index].name);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/image.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 15.0,
                    left: 15.0,
                    child: Text(
                      widget.StatesData[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
