import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatefulWidget {
  final String placeName;

  PlaceDetailScreen({required this.placeName});

  @override
  _PlaceDetailScreenState createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  bool Favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    width: 395,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.placeName,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                                Favorite
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: Favorite ? Colors.black : Colors.red),
                            onPressed: () {
                              setState(() {
                                Favorite = !Favorite;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec ligula ligula. Aenean viverra nec nulla vitae aliquet. Fusce sit amet interdum sapien, vel auctor ex. Integer lobortis, ex id mattis suscipit, arcu mi fermentum justo, non condimentum nisl sapien id mauris.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  
                  SizedBox(height: 400), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
