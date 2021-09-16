import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate.dart';

class DetailPage extends StatefulWidget {
  final RealEstate realEstate;
  const DetailPage({Key? key, required this.realEstate}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 1.8,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(widget.realEstate.img ?? ''),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.realEstate.tag == 'PREMIUM'
                              ? Colors.orangeAccent
                              : Colors.green,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            '${widget.realEstate.tag}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 16,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 16,
                      bottom: 84,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.all(4),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 14,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '${widget.realEstate.shots ?? '0'}',
                                style: TextStyle(color: Colors.white),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                width: 12,
                              ),
                              Icon(
                                Icons.rotate_left,
                                color: Colors.white,
                                size: 14,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '360',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: MediaQuery.of(context).size.height / 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
