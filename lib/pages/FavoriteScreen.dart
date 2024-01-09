import 'package:flutter/material.dart';
import 'package:treks/pages/PlaceDetailScreen.dart'; 

class FavoriteScreen extends StatelessWidget {
  
  final List<String> favoritePlaces = [
    'Favorite Place 1',
    'Favorite Place 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Places'),
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: favoritePlaces.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceDetailScreen(
                      placeName: favoritePlaces[index],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/image.jpg', 
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                favoritePlaces[index],
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
